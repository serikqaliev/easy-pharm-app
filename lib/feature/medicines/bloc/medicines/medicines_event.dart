part of 'medicines_bloc.dart';

@freezed
class MedicinesEvent with _$MedicinesEvent {
  const factory MedicinesEvent.init({@Default(Filter.empty) final Filter? filter}) = MedicinesEvent$Init;
  const factory MedicinesEvent.create({required final MedicineData medicine, final File? medicineImage}) = MedicinesEvent$Create;
  const factory MedicinesEvent.delete({required final Medicine medicine}) = MedicinesEvent$Delete;
}
