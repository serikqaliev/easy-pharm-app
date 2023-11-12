part of 'activation_bloc.dart';

@freezed
class ActivationEvent with _$ActivationEvent {
  const factory ActivationEvent.activate() = ActivationEvent$Activate;
  const factory ActivationEvent.updateUsername({required String username}) = ActivationEvent$UpdateUsername;
}
