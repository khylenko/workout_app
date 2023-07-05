import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_workout_app/shared/repo/data_repo.dart';
import 'package:personal_workout_app/shared/repo/export_import_repo.dart';

part 'import_bloc.freezed.dart';
part 'import_event.dart';
part 'import_state.dart';

class ImportBloc extends Bloc<ImportEvent, ImportState> {
  ImportBloc({
    required DataRepo dataRepo,
    required ExportImportRepo exportImportRepo,
  })  : _dataRepo = dataRepo,
        _exportImportRepo = exportImportRepo,
        super(const ImportState.initial()) {
    on<ImportEvent>(_onEvent);
  }

  Future<void> _onEvent(
    ImportEvent event,
    Emitter<ImportState> emit,
  ) async {
    await event.when(
      load: () => _load(event, emit),
      restore: (path) async {
        try {
          await _dataRepo.restoreData(path: path);
        } catch (e) {
          emit(ImportState.failure(message: e.toString()));
        }
        await _load(event, emit);
      },
    );
  }

  Future<void> _load(
    ImportEvent event,
    Emitter<ImportState> emit,
  ) async {
    try {
      final currentDataCreatedAt =
          await _exportImportRepo.getCurrentDataCreatedAt();

      final data = await _exportImportRepo.getStoredData();

      emit(
        ImportState.success(
          currentDataCreatedAt: currentDataCreatedAt,
          data: data,
        ),
      );
    } catch (e) {
      emit(
        ImportState.failure(
          message: e.toString(),
        ),
      );
    }
  }

  final DataRepo _dataRepo;
  final ExportImportRepo _exportImportRepo;
}
