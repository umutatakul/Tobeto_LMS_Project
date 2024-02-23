abstract class AuthEvent {}

class AuthInititalEvent extends AuthEvent {}

class AuthCreateUserEvent extends AuthEvent {
  AuthCreateUserEvent(
      {required this.email,
      required this.password,
      required this.confirmPassword});

  final String email;
  final String password;
  final String confirmPassword;
}

class AuthLoginUserEvent extends AuthEvent {
  AuthLoginUserEvent({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;
}

class AuthSignOutUserEvent extends AuthEvent {}
