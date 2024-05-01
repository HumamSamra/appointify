import 'dart:async';

import 'package:appointment/core/constants/app_colors.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;

class GlobalNotification {
  static final _notifications = FlutterLocalNotificationsPlugin();

  static GlobalNotification instance = GlobalNotification._();

  GlobalNotification._();

  setUpNotification() async {
    AndroidInitializationSettings android =
        const AndroidInitializationSettings("app_icon");
    DarwinInitializationSettings ios = const DarwinInitializationSettings();
    InitializationSettings initSettings = InitializationSettings(
      android: android,
      iOS: ios,
    );

    await _notifications
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()!
        .requestNotificationsPermission();

    await _notifications.initialize(
      initSettings,
    );
  }

  Future _notificationDetails() async => NotificationDetails(
        android: AndroidNotificationDetails(
          '${DateTime.now()}',
          icon: "app_icon",
          color: AppColors.white,
          "Appointments",
          channelDescription: "Scheduler",
          priority: Priority.high,
          importance: Importance.max,
          playSound: true,
          shortcutId: DateTime.now().toIso8601String(),
        ),
        iOS: const DarwinNotificationDetails(),
      );

  Future showNotification(int id, {String? title, String? message}) async =>
      await _notifications.show(
          id, title, message, await _notificationDetails());

  Future scheduleNotification(int id, DateTime dateTime,
          {String? title, String? message}) async =>
      await _notifications.zonedSchedule(
        id,
        title,
        message,
        tz.TZDateTime.from(dateTime, tz.local),
        await _notificationDetails(),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
      );

  Future cancelScheduledNotification(int id) async =>
      await _notifications.cancel(id);
}
