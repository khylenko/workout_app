part of 'workout_bloc.dart';

@freezed
class WorkoutState with _$WorkoutState {
  const factory WorkoutState.initial() = _Initial;
  const factory WorkoutState.loading() = _Loading;
  const factory WorkoutState.successWorkoutNotStarted({
    required Exersize exersize,
  }) = _SuccessWorkoutNotStarted;
  const factory WorkoutState.successWorkoutStarted({
    required Exersize exersize,
  }) = _SuccessWorkoutStarted;
  const factory WorkoutState.successWorkoutEnded({
    required Exersize exersize,
    required bool isLastExersize,
  }) = _SuccessWorkoutEnded;
  const factory WorkoutState.failure() = _Failure;
}
