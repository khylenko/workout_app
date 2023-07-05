part of 'load_data_bloc.dart';

@freezed
class LoadDataEvent with _$LoadDataEvent {
  const factory LoadDataEvent.load() = _Load;
  const factory LoadDataEvent.reorder({
    required int oldIndex,
    required int newIndex,
  }) = _Reorder;
}
