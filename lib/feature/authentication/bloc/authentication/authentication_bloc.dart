import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/bloc/bloc_set_state_mixin.dart';
import '../../../../common/utils/error_util.dart';
import '../../data/authentication_repository.dart';
import '../../enum/authentication_flow.dart';
import '../../model/user.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> with SetStateMixin<AuthenticationState> {
  final IAuthenticationRepository _authenticationRepository;
  StreamSubscription<User>? _userSubscription;

  AuthenticationBloc({
    required IAuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(const AuthenticationState.idle(
          user: User.unauthenticated(),
          message: '',
          flow: AuthenticationFlow.initial,
        )) {
    _userSubscription = _authenticationRepository.userChanges().listen((user) => setState(AuthenticationState.fromUser(user)));
    on<AuthenticationEvent>(
      (event, emit) {
        event.map(
          sendPhone: (event) => _sendPhone(event, emit),
          verifyPhone: (event) => _sendCode(event, emit),
          logout: (event) => _logout(event, emit),
          check: (event) => _check(event, emit),
          activate: (event) => _activate(event, emit),
          delete: (event) => _delete(event, emit),
        );
      },
    );
  }

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
  }

  Future<void> _sendPhone(
    AuthenticationEvent$SendPhone event,
    Emitter<AuthenticationState> emit,
  ) async {
    setState(const AuthenticationState.processing(user: User.unauthenticated(), message: 'Sending code'));
    try {
      final userId = await _authenticationRepository.sendPhone(phone: event.phone);
      setState(
        AuthenticationState.idle(
          user: const User.unauthenticated(),
          userId: userId,
          message: 'Code sent',
          flow: AuthenticationFlow.codeSent,
          phone: event.phone,
        ),
      );
    } on Object catch (error, stackTrace) {
      setState(
        AuthenticationState.idle(
          user: const User.unauthenticated(),
          message: 'Error',
          flow: AuthenticationFlow.initial,
          error: ErrorUtil.formatMessage(error),
          phone: event.phone,
        ),
      );
      Error.safeToString(error);
      stackTrace.toString();
      rethrow;
    }
  }

  Future<void> _sendCode(
    AuthenticationEvent$VerifyPhone event,
    Emitter<AuthenticationState> emit,
  ) async {
    setState(
      AuthenticationState.processing(
        user: state.user,
        userId: state.userId,
        message: 'Sending code',
        flow: AuthenticationFlow.codeSent,
        phone: state.phone,
      ),
    );
    try {
      final user = await _authenticationRepository.verifyPhone(userId: state.userId!, code: event.code);

      setState(
        AuthenticationState.idle(
          user: user,
          userId: state.userId,
          message: user.isRegistered ? 'Code verified' : 'User not activated',
          flow: user.isRegistered ? AuthenticationFlow.codeSent : AuthenticationFlow.notRegistered,
          phone: state.phone,
        ),
      );
    } on Object catch (error, stackTrace) {
      setState(
        AuthenticationState.idle(
          user: state.user,
          userId: state.userId,
          message: 'Error',
          flow: AuthenticationFlow.codeSent,
          error: ErrorUtil.formatMessage(error),
          phone: state.phone,
        ),
      );
      Error.safeToString(error);
      stackTrace.toString();
      rethrow;
    }
  }

  Future<void> _logout(
    AuthenticationEvent$Logout event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      await _authenticationRepository.logout();
    } on Object catch (error, stackTrace) {
      setState(
        AuthenticationState.idle(
          user: const User.unauthenticated(),
          message: 'Error',
          flow: AuthenticationFlow.initial,
          error: ErrorUtil.formatMessage(error),
        ),
      );
      Error.safeToString(error);
      stackTrace.toString();
      rethrow;
    }
  }

  Future<void> _check(
    AuthenticationEvent$Check event,
    Emitter<AuthenticationState> emit,
  ) async {
    setState(const AuthenticationState.processing(user: User.unauthenticated(), message: 'Checking'));
    try {
      final user = await _authenticationRepository.getUser();
      setState(AuthenticationState.fromUser(user));
    } on Object catch (error, stackTrace) {
      await _authenticationRepository.logout();
      setState(
        AuthenticationState.idle(
          user: const User.unauthenticated(),
          message: 'Error',
          flow: AuthenticationFlow.initial,
          error: ErrorUtil.formatMessage(error),
        ),
      );
      Error.safeToString(error);
      stackTrace.toString();
      rethrow;
    }
  }

  Future<void> _activate(
    AuthenticationEvent$Activate event,
    Emitter<AuthenticationState> emit,
  ) async {
    setState(AuthenticationState.processing(user: state.user, message: 'Activating', flow: AuthenticationFlow.notRegistered));

    try {
      final user = await _authenticationRepository.activate(username: event.username);
      setState(AuthenticationState.fromUser(user));
    } on Object catch (error, stackTrace) {
      setState(
        AuthenticationState.idle(
          user: state.user,
          message: 'Error',
          flow: AuthenticationFlow.notRegistered,
          error: ErrorUtil.formatMessage(error),
        ),
      );
      Error.safeToString(error);
      stackTrace.toString();
      rethrow;
    }
  }

  Future<void> _delete(
    AuthenticationEvent$Delete event,
    Emitter<AuthenticationState> emit,
  ) async {
    setState(AuthenticationState.processing(user: state.user, message: 'Deleting', flow: AuthenticationFlow.initial));

    try {
      await _authenticationRepository.delete();
    } on Object catch (error, stackTrace) {
      setState(
        AuthenticationState.idle(
          user: state.user,
          message: 'Error',
          flow: AuthenticationFlow.initial,
          error: ErrorUtil.formatMessage(error),
        ),
      );
      Error.safeToString(error);
      stackTrace.toString();
      rethrow;
    }
  }
}
