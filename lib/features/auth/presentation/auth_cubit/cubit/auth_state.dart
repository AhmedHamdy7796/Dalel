class AuthState {}
final class AuthInitial extends AuthState {}   

final class SignUpLoadingState extends AuthState {}   

final class SignUpSuccessState extends AuthState {}   

final class SignUpFailuerState extends AuthState {
  final String errorMessage;
  SignUpFailuerState({required this.errorMessage});
}   

final class ObscurePasswordTextUpdateState extends AuthState {}

final class UpdateTermsAndConditionsCheckBox extends AuthState {}   
