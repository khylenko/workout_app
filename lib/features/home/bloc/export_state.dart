part of 'export_bloc.dart';

@freezed
class ExportState with _$ExportState {
  const factory ExportState.initial() = _Initial;
  const factory ExportState.loading() = _Loading;
  const factory ExportState.success() = _Success;
  const factory ExportState.failure({
    required String message,
  }) = _Failure;
}
