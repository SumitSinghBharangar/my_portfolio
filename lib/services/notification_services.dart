import 'dart:developer';
import 'dart:math';

import 'package:app_settings/app_settings.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationServices {
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  void requestNotificationPermission() async {
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
    } else {
      AppSettings.openAppSettings;
      debugPrint("user denied permission");
    }
  }

  Future<String> getDeviceToken() async {
    String? token = await messaging.getToken();
    return token!;
  }

  void initLocalNotifications(
      BuildContext context, RemoteMessage message) async {
    var androidInitializationSettings =
        const AndroidInitializationSettings("@mipmap/ic_launcher");
    var iosInitializationSettings = const DarwinInitializationSettings();

    var initializationSettings = InitializationSettings(
      android: androidInitializationSettings,
      iOS: iosInitializationSettings,
    );

    await _flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: (payload) {});
  }

  void isTokenRefesh() async {
    messaging.onTokenRefresh.listen((event) {
      event.toString();
    });
  }

  void firebaseInit() async {
    FirebaseMessaging.onMessage.listen((message) {
      debugPrint(message.notification!.title.toString());
      debugPrint(message.notification!.body.toString());
      showNotification(message);
    });
  }

  Future<void> showNotification(RemoteMessage message) async {
    AndroidNotificationChannel channel = AndroidNotificationChannel(
        Random.secure().nextInt(1000000).toString(),
        "High Importance Notification",
        importance: Importance.high);
    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      channel.id.toString(),
      channel.name.toString(),
      channelDescription: "your channel discription",
      importance: Importance.high,
      priority: Priority.high,
      ticker: "ticker",
    );

    DarwinNotificationDetails darwinNotificationDetails =
        DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
    );

    Future.delayed(
      Duration.zero,
      () {
        _flutterLocalNotificationsPlugin.show(
          0,
          message.notification!.title.toString(),
          message.notification!.body.toString(),
          notificationDetails,
        );
      },
    );
  }
}
