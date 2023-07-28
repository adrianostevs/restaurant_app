import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/ui/setting/setting_provider.dart';

class SettingScreen extends StatelessWidget {
  static const routeName = '/setting';
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark, //Android
            statusBarBrightness: Brightness.light //iOS
            ),
        title: const Text(
          'Setting',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Notification',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  'Enable Notification',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            Transform.scale(
              scale: 0.8,
              child: Consumer<SettingProvider>(builder: (context, value, _) {
                return CupertinoSwitch(
                  value: value.isEnableNotification,
                  onChanged: (isEnable) {
                    value.setNotificationPreferences(isEnable);
                  },
                  trackColor: Colors.grey.shade300,
                  activeColor: Colors.grey,
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
