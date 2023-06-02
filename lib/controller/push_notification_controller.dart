import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:get/get.dart';

import '../firebase_options.dart';
import '../model/push_notification.dart';
import '../views/second_page.dart';

class PushNotificationController extends GetxController {
  late final FirebaseMessaging messaging;
  Rx<PushNotification?> notificationInfo = Rxn<PushNotification>();

  @override
  void onInit() {
    //handling background message
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    registerNotification();
    setupInteractedMessage();
    super.onInit();
  }

  Future<void> setupInteractedMessage() async {
    // Get any messages which caused the application to open from
    // a terminated state.
    RemoteMessage? initialMessage = await FirebaseMessaging.instance.getInitialMessage();

    // If the message also contains a data property with a "type" of "chat",
    // navigate to a chat screen
    if (initialMessage != null) {
      handleMessage(initialMessage);
    }

    // Also handle any interaction when the app is in the background via a
    // Stream listener
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }

  void handleMessage(RemoteMessage message) {
    print("yess it is key page");
    Get.to(const SecondPage());
  }

  Future<void> registerNotification() async {
    // Instantiate Firebase Messaging
    messaging = FirebaseMessaging.instance;

    // On iOS, this helps to take the user permissions
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      badge: true,
      provisional: false,
      sound: true,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      log('====>>>>>>User granted permission');
      final fcmToken = await FirebaseMessaging.instance.getToken();
      log('==================================>>>>>>fcm token $fcmToken');

      // For handling the received notifications  ((Foreground messages))
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        // Parse the message received
        PushNotification notification = PushNotification(
          title: message.notification?.title,
          body: message.notification?.body,
        );
        // For displaying the notification in snackbar when received
        Get.snackbar(
          notification.title!,
          notification.body!,
          duration: const Duration(seconds: 3),
        );
        // notificationInfo.value = notification;
        // hpc.totalNotifications++;

        // if (hpc.notificationInfo != null) {
        //   // For displaying the notification as an overlay
        //   Get.snackbar(
        //     hpc.notificationInfo!.title!,
        //     hpc.notificationInfo!.body!,
        //   );
        // }
      });
    } else {
      log('======>>>>User declined or has not accepted permission');
    }
  }
}

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  log('===========>>> Handling a background message ${message.messageId}');
}
