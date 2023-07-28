import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/data/local/pref/preferences_helper.dart';

import '../../utils/background_service.dart';
import '../../utils/date_time_helper.dart';

class SettingProvider extends ChangeNotifier {
  final PreferencesHelper preferencesHelper;

  SettingProvider({required this.preferencesHelper}) {
    getNotificationPreferences();
  }

  bool _isEnableNotification = false;
  bool get isEnableNotification => _isEnableNotification;

  void getNotificationPreferences() async {
    _isEnableNotification = await preferencesHelper.isEnableNotification;
    notifyListeners();
  }

  void setNotificationPreferences(bool value) async {
    preferencesHelper.setEnableNotification(value);
    getNotificationPreferences();
    scheduleNotification(value);
  }

  Future<bool> scheduleNotification(bool value) async {
    if (value) {
      notifyListeners();
      return await AndroidAlarmManager.periodic(
          const Duration(hours: 24), 1, BackgroundService.callback,
          startAt: DateTimeHelper.format(), exact: true, wakeup: true);
    } else {
      notifyListeners();
      return await AndroidAlarmManager.cancel(1);
    }
  }
}
