import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_workout_app/shared/models/exersize_model.dart';
import 'package:personal_workout_app/shared/repo/data_repo.dart';

part 'load_statistics_bloc.freezed.dart';
part 'load_statistics_event.dart';
part 'load_statistics_state.dart';

class LoadStatisticsBloc
    extends Bloc<LoadStatisticsEvent, LoadStatisticsState> {
  LoadStatisticsBloc({
    required DataRepo dataRepo,
  })  : _dataRepo = dataRepo,
        super(const LoadStatisticsState.initial()) {
    on<LoadStatisticsEvent>(_onEvent);
  }

  Future<void> _onEvent(
    LoadStatisticsEvent event,
    Emitter<LoadStatisticsState> emit,
  ) async {
    await event.when(
      load: () async {
        emit(const LoadStatisticsState.loading());
        final data = _dataRepo.exersizeModel?.statistics;

        if (data != null) {
          emit(
            LoadStatisticsState.success(
              exersize: data,
            ),
          );
        } else {
          emit(
            const LoadStatisticsState.failure(),
          );
        }
      },
    );
  }

  final DataRepo _dataRepo;
}
