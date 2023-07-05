import 'dart:convert';
import 'dart:developer';

import 'package:personal_workout_app/shared/enums/stored_data_type.dart';
import 'package:personal_workout_app/shared/helpers/file_helper.dart';
import 'package:personal_workout_app/shared/models/exersize_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InitRepos {
  static Future<void> init() async {
    await _initDirectories();
    await _initRepos();
  }

  static Future<void> _initDirectories() async {
    return FileHelper.createDirectories();
  }

  static Future<void> _initRepos() async {
    final prefs = await SharedPreferences.getInstance();
    final main = prefs.getString(
      StoredType.mainData.value,
    );

    final initialData = ExersizeModel.initial();

    if (main == null) {
      try {
        await prefs.setString(
          StoredType.mainData.value,
          jsonEncode(
            initialData,
          ),
        );
      } catch (e) {
        log('InitRepos init Err => $e');
      }
    }
  }
}
