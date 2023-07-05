part of 'exersize_crud_bloc.dart';

@freezed
class ExersizeCrudState with _$ExersizeCrudState {
  const factory ExersizeCrudState.initial() = _Initial;
  const factory ExersizeCrudState.loading() = _Loading;
  const factory ExersizeCrudState.loaded({
    required Exersize exersize,
  }) = _Loaded;
  const factory ExersizeCrudState.success() = _Success;
  const factory ExersizeCrudState.failure() = _Failure;
}
