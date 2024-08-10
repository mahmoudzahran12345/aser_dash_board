abstract class AuthState {}

class FirstState extends AuthState {}

class AuthLoadingState extends AuthState {}

class AuthSuccessful extends AuthState {}

class AuthError extends AuthState {
  final String error;
  AuthError({required this.error});
}

class LoginLoading extends AuthState {

}

class LoginLoaded extends AuthState {

}

class LoginError extends AuthState {
final String error;

LoginError(this.error,);
}


