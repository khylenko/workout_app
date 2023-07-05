import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_workout_app/shared/models/exersize_model.dart';
import 'package:personal_workout_app/shared/repo/data_repo.dart';

part 'load_data_bloc.freezed.dart';
part 'load_data_event.dart';
part 'load_data_state.dart';

class LoadDataBloc extends Bloc<LoadDataEvent, LoadDataState> {
  LoadDataBloc({
    required DataRepo dataRepo,
  })  : _dataRepo = dataRepo,
        super(const LoadDataState.initial()) {
    on<LoadDataEvent>(_onEvent);
  }

  Future<void> _onEvent(
    LoadDataEvent event,
    Emitter<LoadDataState> emit,
  ) async {
    await event.when(
      load: () => _load(event, emit),
      reorder: (int oldIndex, int newIndex) async {
        await _dataRepo.reorder(
          oldIndex: oldIndex,
          newIndex: newIndex,
        );
        await _load(event, emit);
      },
    );
  }

  Future<void> _load(
    LoadDataEvent event,
    Emitter<LoadDataState> emit,
  ) async {
    emit(const LoadDataState.loading());
    final data = _dataRepo.exersizeModel?.exersize;

    if (data != null) {
      emit(
        LoadDataState.success(
          exersize: data,
        ),
      );
    } else {
      emit(
        const LoadDataState.failure(),
      );
    }
  }

  final DataRepo _dataRepo;
}
