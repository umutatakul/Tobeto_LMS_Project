import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/auth_bloc/auth_bloc_state.dart';
import 'package:tobeto_lms_project/api/blocs/auth_bloc/auth_event.dart.dart';
import 'package:tobeto_lms_project/api/repositories/auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  final FirebaseAuth _firebaseAuth;

  AuthBloc(this._authRepository, this._firebaseAuth)
      : super(AuthInitialState()) {
    on<AuthLoginUserEvent>(_onLoginUser);
    on<AuthCreateUserEvent>(_onCreateUser);
    on<AuthSignOutUserEvent>(_onSignOut);

    //Ana sayfaya otomatik navigate etmesi için user ın olup olmadığını emit ediyoruz.
    _firebaseAuth.authStateChanges().listen((firebaseUser) {
      if (firebaseUser != null) {
        //emit() ile yayınlardık ama içinde state varlığı olan bir bloc yapısı olamdığı için uyarı veriyor
        (AuthenticatedState(user: firebaseUser));
      } else {
        (NotAuthenticatedState());
      }
    });
  }

  Future<void> _onLoginUser(
      AuthLoginUserEvent event, Emitter<AuthState> emit) async {
    try {
      await _authRepository.loginUser(event.email, event.password);
      emit(AuthenticatedState());
    } catch (e) {
      emit(AuthErrorState(message: e.toString()));
    }
  }

  Future<void> _onCreateUser(
      AuthCreateUserEvent event, Emitter<AuthState> emit) async {
    try {
      await _authRepository.createUser(
          event.email, event.password, event.confirmPassword);
      emit(AuthenticatedState());
    } catch (e) {
      emit(AuthErrorState(message: e.toString()));
    }
  }

  Future<void> _onSignOut(
      AuthSignOutUserEvent event, Emitter<AuthState> emit) async {
    try {
      await _authRepository.singOutUser();
      emit(AuthSignOutState());
    } catch (e) {
      emit(AuthErrorState(message: e.toString()));
    }
  }
}
