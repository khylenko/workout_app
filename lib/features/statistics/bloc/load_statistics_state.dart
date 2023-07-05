part of 'load_statistics_bloc.dart';

@freezed
class LoadStatisticsState with _$LoadStatisticsState {
  const factory LoadStatisticsState.initial() = _Initial;
  const factory LoadStatisticsState.loading() = _Loading;
  const factory LoadStatisticsState.success({
    required List<Exersize> exersize,
  }) = _Success;
  const factory LoadStatisticsState.failure() = _Failure;
}
