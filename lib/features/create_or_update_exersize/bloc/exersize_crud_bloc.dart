import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_workout_app/shared/models/exersize_model.dart';
import 'package:personal_workout_app/shared/repo/data_repo.dart';

part 'exersize_crud_bloc.freezed.dart';
part 'exersize_crud_event.dart';
part 'exersize_crud_state.dart';

class ExersizeCrudBloc extends Bloc<ExersizeCrudEvent, ExersizeCrudState> {
  ExersizeCrudBloc({
    required DataRepo dataRepo,
  })  : _dataRepo = dataRepo,
        super(const ExersizeCrudState.initial()) {
    on<ExersizeCrudEvent>(_onEvent);
  }

  Future<void> _onEvent(
    ExersizeCrudEvent event,
    Emitter<ExersizeCrudState> emit,
  ) async {
    await event.when(
      load: (createdAt) async {
        emit(const ExersizeCrudState.loading());
        final exersize = await _dataRepo.get(createdAt);
        if (exersize != null) {
          emit(
            ExersizeCrudState.loaded(
              exersize: exersize,
            ),
          );
        } else {
          emit(const ExersizeCrudState.failure());
        }
      },
      save: (Exersize exersize) async {
        emit(const ExersizeCrudState.loading());
        try {
          await _dataRepo.addOrUpdate(
            exersize,
          );
          emit(const ExersizeCrudState.success());
        } catch (_) {
          emit(const ExersizeCrudState.failure());
          rethrow;
        }
      },
      delete: (int createdAt) async {
        emit(const ExersizeCrudState.loading());
        try {
          await _dataRepo.delete(createdAt);
          emit(const ExersizeCrudState.success());
        } catch (e) {
          emit(const ExersizeCrudState.failure());
          rethrow;
        }
      },
    );
  }

  final DataRepo _dataRepo;
}
