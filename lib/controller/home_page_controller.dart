// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:habit_tracker/model/push_notification.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  // @override
  // void onInit() {
  //   FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
  //     PushNotification notification = PushNotification(
  //       title: message.notification?.title,
  //       body: message.notification?.body,
  //     );

  //     notificationInfo = notification;
  //     totalNotifications++;
  //   });

  //   // checkForInitialMessage();
  //   super.onInit();
  // }

  // var totalNotifications = 0.obs;
  // late final FirebaseMessaging messaging;
  // PushNotification? notificationInfo;

  // checkForInitialMessage() async {
  //   await Firebase.initializeApp();
  //   RemoteMessage? initialMessage = await FirebaseMessaging.instance.getInitialMessage();

  //   if (initialMessage != null) {
  //     PushNotification notification = PushNotification(
  //       title: initialMessage.notification?.title,
  //       body: initialMessage.notification?.body,
  //     );

  //     notificationInfo = notification;
  //     totalNotifications++;
  //   }
  // }
}
