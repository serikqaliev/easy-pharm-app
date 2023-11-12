part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.sendPhone({required final String phone}) = AuthenticationEvent$SendPhone;
  const factory AuthenticationEvent.verifyPhone({required final String code}) = AuthenticationEvent$VerifyPhone;
  const factory AuthenticationEvent.logout() = AuthenticationEvent$Logout;
  const factory AuthenticationEvent.check() = AuthenticationEvent$Check;
  const factory AuthenticationEvent.activate({required final String username, required final File? avatar}) = AuthenticationEvent$Activate;
  const factory AuthenticationEvent.delete() = AuthenticationEvent$Delete;
}
