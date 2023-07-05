import 'package:easy_localization/easy_localization.dart';

extension StringExtension on String {
  String getFileNameFromFilePath() => split('/').last;

  String getDateFromFileSystemEntityPath() {
    return DateFormat('dd/MM/yyyy - HH:mm:ss').format(
      DateTime.fromMillisecondsSinceEpoch(
        int.parse(getFileNameFromFilePath()),
      ),
    );
  }
}
