import 'package:bloc/bloc.dart';
import '../../../../common/bloc/bloc_set_state_mixin.dart';
import '../../data/authentication_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/utils/error_util.dart';
import '../../model/user.dart';

part 'activation_event.dart';
part 'activation_state.dart';
part 'activation_bloc.freezed.dart';

class ActivationBloc extends Bloc<ActivationEvent, ActivationState> with SetStateMixin<ActivationState> {
  final IAuthenticationRepository _authenticationRepository;

  ActivationBloc({
    required User user,
    required IAuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(ActivationState.fromUser(user)) {
    on<ActivationEvent>((event, emit) => event.map(
          activate: (event) => _activate(event, emit),
          updateUsername: (event) => _updateUsername(event, emit),
        ));
  }

  Future<void> _activate(
    ActivationEvent$Activate event,
    Emitter<ActivationState> emit,
  ) async {
    setState(const ActivationState.processing(user: User.unauthenticated(), username: ''));

    try {
      final user = await _authenticationRepository.activate(username: state.username);
      setState(ActivationState.successfull(user: user, username: state.username));
    } on Object catch (error, stackTrace) {
      setState(ActivationState.idle(user: const User.unauthenticated(), error: ErrorUtil.formatMessage(error), username: state.username));

      Error.safeToString(stackTrace);
      stackTrace.toString();
      rethrow;
    }
  }

  Future<void> _updateUsername(
    ActivationEvent$UpdateUsername event,
    Emitter<ActivationState> emit,
  ) async {
    setState(state.copyWith(username: event.username));
  }
}
