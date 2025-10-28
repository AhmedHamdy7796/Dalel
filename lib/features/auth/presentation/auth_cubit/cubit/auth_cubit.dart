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
  final GlobalKey<FormState> signUpFormKey = GlobalKey();

  signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: emailAddress!,
            password: password!,
          );
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(
          SignUpFailuerState(
            errorMessage:
                'The password provided is too weak.',
          ),
        );
      } else if (e.code == 'email-already-in-use') {
        emit(
          SignUpFailuerState(
            errorMessage:
                'The account already exists for that email.',
          ),
        );
      }
    } catch (e) {
      emit(SignUpFailuerState(errorMessage: e.toString()));
    }
  }

  updateTermsAndConditionsCheckBox({required newValue}) {
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
}
