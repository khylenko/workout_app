part of 'load_data_bloc.dart';

@freezed
class LoadDataState with _$LoadDataState {
  const factory LoadDataState.initial() = _Initial;
  const factory LoadDataState.loading() = _Loading;
  const factory LoadDataState.success({
    required List<Exersize> exersize,
  }) = _Success;
  const factory LoadDataState.failure() = _Failure;
}
