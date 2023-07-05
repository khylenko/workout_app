part of 'import_bloc.dart';

@freezed
class ImportState with _$ImportState {
  const factory ImportState.initial() = _Initial;
  const factory ImportState.loading() = _Loading;
  const factory ImportState.success({
    required int? currentDataCreatedAt,
    required List<FileSystemEntity>? data,
  }) = _Success;
  const factory ImportState.failure({
    required String message,
  }) = _Failure;
}
