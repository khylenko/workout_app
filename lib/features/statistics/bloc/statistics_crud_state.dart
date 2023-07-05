part of 'statistics_crud_bloc.dart';

@freezed
class StatisticsCrudState with _$StatisticsCrudState {
  const factory StatisticsCrudState.initial() = _Initial;
  const factory StatisticsCrudState.success() = _Success;
  const factory StatisticsCrudState.failure() = _Failure;
}
