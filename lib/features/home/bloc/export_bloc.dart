import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_workout_app/shared/repo/data_repo.dart';
import 'package:personal_workout_app/shared/repo/export_import_repo.dart';

part 'export_bloc.freezed.dart';
part 'export_event.dart';
part 'export_state.dart';

class ExportBloc extends Bloc<ExportEvent, ExportState> {
  ExportBloc({
    required DataRepo dataRepo,
    required ExportImportRepo exportImportRepo,
  })  : _dataRepo = dataRepo,
        _exportImportRepo = exportImportRepo,
        super(const ExportState.initial()) {
    on<ExportEvent>(_onEvent);
  }

  Future<void> _onEvent(
    ExportEvent event,
    Emitter<ExportState> emit,
  ) async {
    await event.when(
      export: () async {
        emit(
          const ExportState.loading(),
        );
        try {
          final data = _dataRepo.exersizeModel;

          if (data != null) {
            await _exportImportRepo.saveOnDisc(
              data,
            );
          }

          emit(
            const ExportState.success(),
          );
        } catch (e) {
          emit(
            ExportState.failure(
              message: e.toString(),
            ),
          );
        }
      },
    );
  }

  final DataRepo _dataRepo;
  final ExportImportRepo _exportImportRepo;
}
