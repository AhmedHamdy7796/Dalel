import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? firstName;
  String? lastName;
  String? emailAddress;
  String? password;
  bool? termAndConditionCheckBoxValue = false;
  bool? obscurePasswordTextValue = true;
  final GlobalKey<FormState> signupFormKey = GlobalKey();
  final GlobalKey<FormState> signinFormKey = GlobalKey();
  final GlobalKey<FormState> forgotPasswordFormkey = GlobalKey();

  Future<void> signUpWithEmailAndPassword() async {
    try {
      emit(SignupLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      await addUserProfile();
      // verifyEmail();
      emit(SignupSuccessState());
    } on FirebaseAuthException catch (e) {
      _signUpHandleException(e);
    } catch (e) {
      emit(SignupFailuerState(errorMessage: e.toString()));
    }
  }

  void _signUpHandleException(FirebaseAuthException e) {
    if (e.code == 'weak-password') {
      emit(
        SignupFailuerState(
          errorMessage: 'The password provided is too weak.',
        ),
      );
    } else if (e.code == 'email-already-in-use') {
      emit(
        SignupFailuerState(
          errorMessage:
              'The account already exists for that email.',
        ),
      );
    } else if (e.code == 'invalid-email') {
      emit(
        SignupFailuerState(errorMessage: 'This email is invalid.'),
      );
    } else {
      emit(SigninFailuerState(errorMessage: e.code));
    }
  }

  // Future<void> verifyEmail() async {
  //   await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  // }

  void updateTermsAndConditionsCheckBox({required newValue}) {
    termAndConditionCheckBoxValue = newValue;
    emit(UpdateTermsAndConditionsCheckBox());
  }

  void obscurePasswordText() {
    if (obscurePasswordTextValue == true) {
      obscurePasswordTextValue = false;
    } else {
      obscurePasswordTextValue = true;
    }
    emit(ObscurePasswordTextUpdateState());
  }

  Future<void> signInWithEmailAndPassword() async {
    try {
      emit(SigninLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SigninSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(
          SigninFailuerState(
            errorMessage: 'No user found for that email.',
          ),
        );
      } else if (e.code == 'wrong-password') {
        emit(
          SigninFailuerState(
            errorMessage: 'Wrong password provided for that user.',
          ),
        );
      } else {
        emit(
          SignupFailuerState(
            errorMessage: 'Check Your Email and Password!.',
          ),
        );
      }
    } catch (e) {
      emit(SigninFailuerState(errorMessage: e.toString()));
    }
  }

  Future<void> resetPasswordWithLink() async {
    try {
      emit(ResetPasswordLoadingState());
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: emailAddress!,
      );
      emit(ResetPasswordFailuerState(errorMessage: ''));
    } catch (e) {
      emit(ResetPasswordFailuerState(errorMessage: e.toString()));
    }
  }

  Future<void> addUserProfile()async{
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    await users.add({
      "email": emailAddress,
      "first_name": firstName,
      "last_name": lastName,
    });
  }
}
 