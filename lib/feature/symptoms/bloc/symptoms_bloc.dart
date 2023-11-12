import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/bloc/bloc_set_state_mixin.dart';
import '../../../common/utils/error_util.dart';
import '../data/symptoms_repository.dart';
import '../model/symptom.dart';
import '../model/symptom_dto.dart';

part 'symptoms_bloc.freezed.dart';
part 'symptoms_event.dart';
part 'symptoms_state.dart';

class SymptomsBloc extends Bloc<SymptomsEvent, SymptomsState> with SetStateMixin<SymptomsState> {
  final ISymptomsRepository _repository;

  SymptomsBloc({
    required final ISymptomsRepository repository,
  })  : _repository = repository,
        super(SymptomsState.initial) {
    on<SymptomsEvent>(
      (event, emit) {
        event.map(
          init: (event) => _init(event, emit),
          create: (event) => _create(event, emit),
          delete: (event) => _delete(event, emit),
        );
      },
    );
  }

  Future<void> _init(
    SymptomsEvent$Init event,
    Emitter<SymptomsState> emit,
  ) async {
    setState(SymptomsState.processing(symptoms: state.symptoms));

    try {
      final symptoms = await _repository.list();
      setState(SymptomsState.idle(symptoms: symptoms));
    } on Object catch (error, stackTrace) {
      setState(SymptomsState.idle(symptoms: state.symptoms, error: ErrorUtil.formatMessage(error)));
      Error.safeToString(error);
      stackTrace.toString();
      rethrow;
    }
  }

  Future<void> _create(
    SymptomsEvent$Create event,
    Emitter<SymptomsState> emit,
  ) async {
    setState(SymptomsState.processing(symptoms: state.symptoms));

    try {
      final symptom = await _repository.create(event.symptom);
      setState(SymptomsState.created(symptoms: [...state.symptoms, symptom]));
    } on Object catch (error, stackTrace) {
      setState(SymptomsState.idle(symptoms: state.symptoms, error: ErrorUtil.formatMessage(error)));
      Error.safeToString(error);
      stackTrace.toString();
      rethrow;
    } finally {
      setState(SymptomsState.idle(symptoms: state.symptoms, error: state.error));
    }
  }

  Future<void> _delete(
    SymptomsEvent$Delete event,
    Emitter<SymptomsState> emit,
  ) async {
    setState(SymptomsState.processing(symptoms: state.symptoms));

    try {
      final $symptoms = event.symptoms;
      await _repository.deleteSymptoms($symptoms);

      final updatedSymptoms = state.symptoms.where((symptom) => !$symptoms.contains(symptom)).toList();
      setState(SymptomsState.deleted(symptoms: updatedSymptoms));
    } on Object catch (error, stackTrace) {
      setState(SymptomsState.idle(symptoms: state.symptoms, error: ErrorUtil.formatMessage(error)));
      Error.safeToString(error);
      stackTrace.toString();
      rethrow;
    } finally {
      setState(SymptomsState.idle(symptoms: state.symptoms, error: state.error));
    }
  }
}
