import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_workout_app/shared/repo/data_repo.dart';

part 'statistics_crud_bloc.freezed.dart';
part 'statistics_crud_event.dart';
part 'statistics_crud_state.dart';

class StatisticsCrudBloc
    extends Bloc<StatisticsCrudEvent, StatisticsCrudState> {
  StatisticsCrudBloc({
    required DataRepo dataRepo,
  })  : _dataRepo = dataRepo,
        super(const StatisticsCrudState.initial()) {
    on<StatisticsCrudEvent>(_onEvent);
  }

  List<int> restoredIds = [];

  Future<void> _onEvent(
    StatisticsCrudEvent event,
    Emitter<StatisticsCrudState> emit,
  ) async {
    await event.when(
      restore: (createdAt) async {
        final exersize = await _dataRepo.restoreFromStatistics(createdAt);
        if (exersize != null) {
          emit(
            const StatisticsCrudState.success(),
          );
        } else {
          emit(const StatisticsCrudState.failure());
        }
      },
    );
  }

  final DataRepo _dataRepo;
}
