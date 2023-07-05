part of 'statistics_crud_bloc.dart';

@freezed
class StatisticsCrudEvent with _$StatisticsCrudEvent {
  const factory StatisticsCrudEvent.restore({
    required int createdAt,
  }) = _Restore;
}
