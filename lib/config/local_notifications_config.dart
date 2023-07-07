import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:personal_workout_app/config/translations/gen/locale_keys.g.dart';
import 'package:personal_workout_app/generated_assets/colors.gen.dart';
import 'package:personal_workout_app/shared/bottom_sheet/bottom_sheet_manager.dart';
import 'package:personal_workout_app/shared/extensions/int_extension.dart';
import 'package:sound_mode/permission_handler.dart';
import 'package:sound_mode/sound_mode.dart';
import 'package:sound_mode/utils/ringer_mode_statuses.dart';

int _id = 0;
RingerModeStatus _initialRingerModeStatus = RingerModeStatus.unknown;
late BuildContext? _context;

class NotificationService {
  factory NotificationService() {
    return _notificationService;
  }

  NotificationService._internal();
  static final NotificationService _notificationService =
      NotificationService._internal();

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> init() async {
    const initializationSettingsAndroid =
        AndroidInitializationSettings('ic_launcher');

    const initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
    );

    final androidImplementation =
        flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>();

    final granted =
        await androidImplementation?.areNotificationsEnabled() ?? false;

    if (!granted) {
      await androidImplementation?.requestPermission();
    }

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: _selectNotification,
    );
    await _getSoundPermisson();
    await _checkDeviceSoundMode();
    await _enableDeviceSound();
  }

  void setContext(BuildContext context) {
    _context = context;
  }

  Future<void> _getSoundPermisson() async {
    if (!(await PermissionHandler.permissionsGranted ?? false)) {
      await PermissionHandler.openDoNotDisturbSetting();
    }
  }

  Future<void> _checkDeviceSoundMode() async {
    _initialRingerModeStatus = await SoundMode.ringerModeStatus;
  }

  Future<void> _enableDeviceSound() async {
    if (await PermissionHandler.permissionsGranted ?? false) {
      if (_initialRingerModeStatus == RingerModeStatus.silent ||
          _initialRingerModeStatus == RingerModeStatus.vibrate) {
        await SoundMode.setSoundMode(RingerModeStatus.normal);
      }
    }
  }

  Future<void> restoreDeviceSoundMode() async {
    if (await PermissionHandler.permissionsGranted ?? false) {
      await SoundMode.setSoundMode(_initialRingerModeStatus);
    }
  }

  Future<void> _selectNotification(
    NotificationResponse notificationResponse,
  ) async {
    await flutterLocalNotificationsPlugin.cancel(
      _id--,
    );
  }

  Future<void> showProgressNotification(
    int duration,
    int timeLeft,
  ) async {
    _id++;
    final progressId = _id;
    final maxProgress = duration;

    bool isValid(int i) {
      if (progressId == _id) {
        return true;
      } else {
        BottomSheetManager.showRestTimerBottomSheet(
          context: _context!,
          duration: duration,
          timePassed: duration - i,
          needHideButton: true,
        );
        return false;
      }
    }

    for (var i = timeLeft; i >= 0 && isValid(i); i--) {
      final minutes = i.timerFormatMinutes();

      final seconds = i.timerFormatSeconds();

      await Future<void>.delayed(
        const Duration(
          seconds: 1,
        ),
        () async {
          final androidNotificationDetails = AndroidNotificationDetails(
            'progress channel',
            'progress channel',
            channelDescription: 'progress channel description',
            channelShowBadge: false,
            importance: Importance.max,
            priority: Priority.high,
            playSound: false,
            onlyAlertOnce: true,
            showProgress: true,
            maxProgress: maxProgress,
            progress: i,
            actions: <AndroidNotificationAction>[
              AndroidNotificationAction(
                'cancel',
                LocaleKeys.rest_timer_notification_button.tr(),
                titleColor: ColorName.cA6164D,
                showsUserInterface: true,
              ),
            ],
          );
          final notificationDetails = NotificationDetails(
            android: androidNotificationDetails,
          );
          await flutterLocalNotificationsPlugin.show(
            progressId,
            LocaleKeys.rest_timer_notification_title.tr(),
            '$minutes:$seconds',
            notificationDetails,
          );
        },
      );
    }

    await _cancelAllNotifications();
  }

  Future<void> showRestEndNotification() async {
    final progressId = _id;
    while (progressId == _id) {
      await Future<void>.delayed(
        const Duration(
          seconds: 2,
        ),
        () async {
          const androidNotificationDetails = AndroidNotificationDetails(
            'progress channel',
            'progress channel',
            channelDescription: 'progress channel description',
            largeIcon: DrawableResourceAndroidBitmap('ic_launcher'),
            channelShowBadge: false,
            importance: Importance.max,
            priority: Priority.high,
            showProgress: true,
            indeterminate: true,
          );
          const notificationDetails = NotificationDetails(
            android: androidNotificationDetails,
          );
          await flutterLocalNotificationsPlugin.show(
            _id,
            LocaleKeys.back_to_work_notification_title.tr(),
            null,
            notificationDetails,
          );
        },
      );
    }

    await flutterLocalNotificationsPlugin.cancel(
      _id--,
    );
  }

  Future<void> _cancelAllNotifications() async {
    await flutterLocalNotificationsPlugin.cancelAll();
  }
}
