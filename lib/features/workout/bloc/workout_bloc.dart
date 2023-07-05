import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_workout_app/shared/models/exersize_model.dart';
import 'package:personal_workout_app/shared/repo/data_repo.dart';

part 'workout_bloc.freezed.dart';
part 'workout_event.dart';
part 'workout_state.dart';

class WorkoutBloc extends Bloc<WorkoutEvent, WorkoutState> {
  WorkoutBloc({
    required DataRepo dataRepo,
  })  : _dataRepo = dataRepo,
        super(const WorkoutState.initial()) {
    on<WorkoutEvent>(_onEvent);
  }

  Future<void> _onEvent(WorkoutEvent event, Emitter<WorkoutState> emit) async {
    await event.when(
      loadExersize: (createdAt) async {
        emit(const WorkoutState.loading());
        final exersize = await _dataRepo.get(createdAt);

        if (exersize != null) {
          emit(
            WorkoutState.successWorkoutNotStarted(
              exersize: exersize,
            ),
          );
        } else {
          emit(const WorkoutState.failure());
        }
      },
      updateWorkoutStartDate: (createdAt) async {
        await _dataRepo.addProgressLogEntryStartDate(createdAt);
        final exersize = await _dataRepo.get(createdAt);

        if (exersize != null) {
          emit(
            WorkoutState.successWorkoutStarted(
              exersize: exersize,
            ),
          );
        } else {
          emit(const WorkoutState.failure());
        }
      },
      updateSet: (createdAt, setNum, completedReps) async {
        await _dataRepo.updateProgressLogEntrySet(
          createdAt,
          setNum,
          completedReps,
        );
        final exersize = await _dataRepo.get(createdAt);

        if (exersize != null) {
          final isExersizeCompleted = exersize.currentSet == null;
          if (isExersizeCompleted) {
            await _endExersize(createdAt, emit);
          } else {
            emit(
              WorkoutState.successWorkoutStarted(
                exersize: exersize,
              ),
            );
          }
        } else {
          emit(const WorkoutState.failure());
        }
      },
      updateWorkoutEndDate: (createdAt) => _endExersize(createdAt, emit),
    );
  }

  Future<void> _endExersize(int createdAt, Emitter<WorkoutState> emit) async {
    emit(const WorkoutState.loading());
    await _dataRepo.updateProgressLogEntryStopDate(createdAt);
    final exersize = await _dataRepo.get(createdAt);

    if (exersize != null) {
      emit(
        WorkoutState.successWorkoutEnded(
          exersize: exersize,
          isLastExersize: _dataRepo.isLastExersize(createdAt),
        ),
      );
    } else {
      emit(const WorkoutState.failure());
    }
  }

  final DataRepo _dataRepo;
}
