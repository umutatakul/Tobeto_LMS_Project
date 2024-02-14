import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthState {}

class AuthInitialState extends AuthState {}

class AuthenticatedState extends AuthState {
  AuthenticatedState({this.user});
  //User firebase e delege ettiğimiz anlık [o an giriş yapmış olan]  olan kullancının
  //(User.current) bilgilerine erişirsin
  User? user;
}

class NotAuthenticatedState extends AuthState {}

class AuthSignOutState extends AuthState {}

class AuthErrorState extends AuthState {
  final String message;

  AuthErrorState({required this.message});
}
