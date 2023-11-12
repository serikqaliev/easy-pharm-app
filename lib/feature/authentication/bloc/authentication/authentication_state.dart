part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const AuthenticationState._();

  /// Idling state
  const factory AuthenticationState.idle({
    required User user,
    String? phone,
    int? userId,
    @Default(AuthenticationFlow.initial) AuthenticationFlow flow,
    @Default('Idle') String message,
    String? error,
  }) = AuthenticationState$Idle;

  /// Processing
  const factory AuthenticationState.processing({
    required User user,
    String? phone,
    int? userId,
    @Default(AuthenticationFlow.initial) AuthenticationFlow flow,
    @Default('Processing') String message,
  }) = AuthenticationState$Processing;

  static AuthenticationState fromUser(User user) => user.maybeMap(
        orElse: () => const AuthenticationState.idle(user: User.unauthenticated(), flow: AuthenticationFlow.initial, phone: null, userId: null),
        authenticated: (user) => AuthenticationState.idle(
          user: user,
          flow: user.isRegistered ? AuthenticationFlow.initial : AuthenticationFlow.notRegistered,
        ),
      );

  /// If an error has occurred
  bool get hasError => maybeMap<bool>(orElse: () => false, idle: (state) => state.error != null);

  /// Get error message
  String? get error => mapOrNull(idle: (state) => state.error);

  /// Is in idle state
  bool get isIdling => !isProcessing;

  /// Is in progress state
  bool get isProcessing => maybeMap<bool>(orElse: () => false, processing: (_) => true);
}
