import 'dart:convert';
import 'dart:io';

import 'package:personal_workout_app/shared/enums/stored_data_type.dart';
import 'package:personal_workout_app/shared/helpers/file_helper.dart';
import 'package:personal_workout_app/shared/models/exersize_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ExportImportRepo {
  Future<void> saveOnDisc(
    ExersizeModel exersizeModel,
  ) async {
    return FileHelper.writeFile(
      exersizeModel: exersizeModel,
    );
  }

  Future<List<FileSystemEntity>?> getStoredData() async {
    try {
      final result = await FileHelper.readDirectory();

      if (result.isNotEmpty) {
        return result;
      } else {
        return null;
      }
    } catch (_) {
      return null;
    }
  }

  Future<int?> getCurrentDataCreatedAt() async {
    final prefs = await SharedPreferences.getInstance();
    try {
      final data = prefs.getString(
        StoredType.mainData.value,
      );
      if (data != null) {
        return ExersizeModel.fromJson(
          jsonDecode(data) as Map<String, dynamic>,
        ).createdAt;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
