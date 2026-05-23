import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technical_test_borwita/data/model/auth/login_response.dart';
import 'package:technical_test_borwita/data/repository/auth/auth_repository.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository _authRepository;

  LoginBloc(this._authRepository) : super(const LoginState.initial()) {
    on<_LoginRequested>(_onLoginRequested);
  }

  Future<void> _onLoginRequested(
    _LoginRequested event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginState.loading());
    try {
      final result = await _authRepository.login(
        username: event.username,
        password: event.password,
      );

      result.fold(
        (error) => emit(LoginState.failed(error)),
        (authResponse) => emit(LoginState.success(authResponse)),
      );
    } catch (e) {
      emit(LoginState.failed('Unexpected error: ${e.toString()}'));
    }
  }
}
