part of 'activation_bloc.dart';

@freezed
class ActivationState with _$ActivationState {
  const ActivationState._();

  const factory ActivationState.idle({
    required User user,
    required String username,
    String? error,
  }) = ActivationState$Idle;

  const factory ActivationState.processing({
    required User user,
    required String username,
  }) = ActivationState$Processing;

  const factory ActivationState.successfull({
    required User user,
    required String username,
  }) = ActivationState$Successfull;

  static ActivationState fromUser(User user) => ActivationState.idle(user: user, username: user.username ?? '');

  bool get isProcessing => maybeMap<bool>(orElse: () => false, processing: (_) => true);
}
