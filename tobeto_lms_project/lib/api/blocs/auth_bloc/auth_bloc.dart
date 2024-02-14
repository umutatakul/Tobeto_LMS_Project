import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/auth_bloc/auth_bloc_state.dart';
import 'package:tobeto_lms_project/api/blocs/auth_bloc/auth_event.dart.dart';
import 'package:tobeto_lms_project/api/repositories/auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc(this._authRepository) : super(AuthInitialState()) {
    on<AuthLoginUserEvent>(_onLoginUser);
    on<AuthCreateUserEvent>(_onCreateUser);
    on<AuthSignOutUserEvent>(_onSignOut);
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
