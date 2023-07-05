import 'dart:convert';
import 'dart:io';

import 'package:lecle_downloads_path_provider/lecle_downloads_path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:personal_workout_app/shared/enums/stored_data_type.dart';
import 'package:personal_workout_app/shared/models/exersize_model.dart';

class FileHelper {
  static const _appName = 'Workouter';
  static Future<String> _fileDirPath() async {
    final downloadsDirectoryPath =
        (await DownloadsPath.downloadsDirectory())?.path;

    return '$downloadsDirectoryPath/$_appName';
  }

  static Future<void> createDirectories() async {
    await _checkPermissions();
    await Directory(await _fileDirPath()).create(
      recursive: true,
    );
  }

  static Future<void> writeFile({
    required ExersizeModel exersizeModel,
  }) async {
    await _checkPermissions();

    await createDirectories();

    final fileName = exersizeModel.createdAt;

    final filePath = '${await _fileDirPath()}/$fileName';

    final t = File(filePath);
    await t.create(recursive: true);
    await t.writeAsString(jsonEncode(exersizeModel));
  }

  static Future<String> readFile({
    required String filePath,
    required StoredType storedType,
  }) async {
    await _checkPermissions();

    return File(filePath).readAsString();
  }

  static Future<List<FileSystemEntity>> readDirectory() async {
    return Directory('${await _fileDirPath()}/').listSync();
  }

  static Future<void> _checkPermissions() async {
    final status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
    }
    final status2 = await Permission.manageExternalStorage.status;
    if (status2.isDenied) {
      await Permission.manageExternalStorage.request();
    }
  }
}
