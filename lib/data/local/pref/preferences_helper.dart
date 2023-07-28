import 'package:shared_preferences/shared_preferences.dart';

class PreferencesHelper {
  final Future<SharedPreferences> preferences;

  PreferencesHelper({required this.preferences});

  static const enableNotification = 'ENABLE_NOTIFICATION';

  Future<bool> get isEnableNotification async {
    final pref = await preferences;
    return pref.getBool(enableNotification) ?? false;
  }

  void setEnableNotification(bool value) async {
    final pref = await preferences;
    pref.setBool(enableNotification, value);
  }
}
