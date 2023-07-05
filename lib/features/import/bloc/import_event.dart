part of 'import_bloc.dart';

@freezed
class ImportEvent with _$ImportEvent {
  const factory ImportEvent.load() = _Load;
  const factory ImportEvent.restore({
    required String path,
  }) = _RestoreData;
}
