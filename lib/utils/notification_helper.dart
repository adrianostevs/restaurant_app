import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:restaurant_app/domain/entity/restaurants/restaurants.dart';
import 'package:restaurant_app/ui/home/home_screen.dart';

final StreamController<Restaurants?> selectNotificationStream =
    StreamController<Restaurants?>.broadcast();

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class NotificationHelper {
  static NotificationHelper? _instance;

  NotificationHelper._internal() {
    _instance = this;
  }

  factory NotificationHelper() => _instance ?? NotificationHelper._internal();

  Future<void> initNotifications(
      FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin) async {
    var initializationSettingsAndroid =
        const AndroidInitializationSettings('ic_logo');

    var initializationSettingsIOS = const DarwinInitializationSettings(
      requestAlertPermission: false,
      requestBadgePermission: false,
      requestSoundPermission: false,
    );

    var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (payload) {
        if (payload.payload != null) {
          print('notification payload: ${payload.payload}');
        }
      },
    );
  }

  Future<void> showNotification(
      FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin,
      List<Restaurants> restaurants) async {
    var channelId = "res_1";
    var channelName = "Restaurant App";
    var channelDescription = "Notifications";

    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        channelId, channelName,
        channelDescription: channelDescription,
        importance: Importance.max,
        priority: Priority.high,
        ticker: 'ticker',
        styleInformation: const DefaultStyleInformation(true, true));

    var iOSPlatformChannelSpecifics = const DarwinNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics);

    var randomContentLength = Random().nextInt(restaurants.length);
    var randomContent = restaurants[randomContentLength];

    var titleNotification = "<b>${randomContent.name}</b>";
    var titleNews = "New Restaurant in ${randomContent.city}";

    await flutterLocalNotificationsPlugin.show(
        0, titleNotification, titleNews, platformChannelSpecifics);
  }

  void configureSelectNotificationSubject(String route) {
    selectNotificationStream.stream.listen((payload) async {
      await navigatorKey.currentState?.pushNamed(HomeScreen.routeName);
    });
  }
}
