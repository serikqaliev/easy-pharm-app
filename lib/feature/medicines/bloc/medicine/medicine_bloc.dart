import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/bloc/bloc_set_state_mixin.dart';
import '../../../symptoms/model/symptom.dart';
import '../../data/medicines_repository.dart';
import '../../model/medicine.dart';

part 'medicine_bloc.freezed.dart';
part 'medicine_event.dart';
part 'medicine_state.dart';

class MedicineBloc extends Bloc<MedicineEvent, MedicineState> with SetStateMixin<MedicineState> {
  final IMedicinesRepository _medicinesRepository;

  MedicineBloc({
    required IMedicinesRepository medicinesRepository,
    required Medicine medicine,
  })  : _medicinesRepository = medicinesRepository,
        super(MedicineState.fromMedicine(medicine)) {
    on<MedicineEvent>((event, emit) {
      event.map(
        init: (event) => _init(event, emit),
      );
    });
  }

  Future<void> _init(
    MedicineEvent$Init event,
    Emitter<MedicineState> emit,
  ) async {
    setState(MedicineState.processing(medicine: event.medicine, message: 'Loading medicine'));
    try {
      final symptoms = await _medicinesRepository.getSymptoms(medicine: state.medicine);
      setState(MedicineState.idle(medicine: state.medicine, symptoms: symptoms));
    } catch (e) {
      setState(MedicineState.idle(medicine: event.medicine, error: e.toString()));
    }
  }
}
