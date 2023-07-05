part of 'workout_bloc.dart';

@freezed
class WorkoutEvent with _$WorkoutEvent {
  const factory WorkoutEvent.loadExersize({
    required int createdAt,
  }) = _LoadExersize;
  const factory WorkoutEvent.updateWorkoutStartDate({
    required int createdAt,
  }) = _UpdateWorkoutStartDate;
  const factory WorkoutEvent.updateSet({
    required int createdAt,
    required int setNum,
    required int completedReps,
  }) = _UpdateSet;
  const factory WorkoutEvent.updateWorkoutEndDate({
    required int createdAt,
  }) = _UpdateWorkoutEndDate;
}
