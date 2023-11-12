import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/bloc/bloc_set_state_mixin.dart';
import '../../../../common/utils/error_util.dart';
import '../../data/medicines_repository.dart';
import '../../model/filter.dart';
import '../../model/medicine.dart';
import '../../model/medicine_dto.dart';

part 'medicines_bloc.freezed.dart';
part 'medicines_event.dart';
part 'medicines_state.dart';

class MedicinesBloc extends Bloc<MedicinesEvent, MedicinesState> with SetStateMixin<MedicinesState> {
  final IMedicinesRepository _repository;

  MedicinesBloc({
    required final IMedicinesRepository repository,
  })  : _repository = repository,
        super(MedicinesState.initial) {
    on<MedicinesEvent>(
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
    MedicinesEvent$Init event,
    Emitter<MedicinesState> emit,
  ) async {
    setState(MedicinesState.processing(medicines: state.medicines, message: state.message, filter: event.filter ?? state.filter));

    try {
      final medicines = await _repository.list(filter: state.filter);
      setState(MedicinesState.idle(medicines: medicines, message: 'Medicines fetched by ${state.filter}', filter: state.filter));
    } on Object catch (error, stackTrace) {
      setState(
        MedicinesState.idle(
          medicines: state.medicines,
          message: 'Medicines error',
          filter: state.filter,
          error: ErrorUtil.formatMessage(error),
        ),
      );

      Error.safeToString(error);
      stackTrace.toString();
      rethrow;
    }
  }

  Future<void> _create(
    MedicinesEvent$Create event,
    Emitter<MedicinesState> emit,
  ) async {
    setState(MedicinesState.processing(medicines: state.medicines, message: 'Creating medicine', filter: state.filter));

    try {
      final medicine = await _repository.create(medicine: event.medicine, medicineImage: event.medicineImage);
      final medicines = [medicine, ...state.medicines];
      setState(MedicinesState.created(medicines: medicines, message: 'Medicine created', filter: state.filter));
    } on Object catch (error, stackTrace) {
      setState(
        MedicinesState.idle(
          medicines: state.medicines,
          message: 'Medicines error',
          filter: state.filter,
          error: ErrorUtil.formatMessage(error),
        ),
      );

      Error.safeToString(error);
      stackTrace.toString();
      rethrow;
    } finally {
      setState(
        MedicinesState.idle(
          medicines: state.medicines,
          message: 'Medicines fetched',
          filter: state.filter,
          error: state.error,
        ),
      );
    }
  }

  Future<void> _delete(
    MedicinesEvent$Delete event,
    Emitter<MedicinesState> emit,
  ) async {
    setState(MedicinesState.processing(medicines: state.medicines, message: 'Deleting medicine', filter: state.filter));

    try {
      await _repository.delete(id: event.medicine.id);
      final medicines = [...state.medicines]..remove(event.medicine);

      setState(MedicinesState.deleted(medicines: medicines, message: 'Medicine deleted', filter: state.filter));
    } on Object catch (error, stackTrace) {
      setState(
        MedicinesState.idle(
          medicines: state.medicines,
          message: 'Medicines error',
          filter: state.filter,
          error: ErrorUtil.formatMessage(error),
        ),
      );

      Error.safeToString(error);
      stackTrace.toString();
      rethrow;
    } finally {
      setState(
        MedicinesState.idle(
          medicines: state.medicines,
          message: 'Medicines fetched',
          filter: state.filter,
          error: state.error,
        ),
      );
    }
  }
}
