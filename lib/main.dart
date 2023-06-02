import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:habit_tracker/controller/push_notification_controller.dart';
import 'package:habit_tracker/firebase_options.dart';
import 'package:habit_tracker/utils/page.dart';
import 'package:habit_tracker/views/home_page.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //initializing firebase app
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const HabitTracker());
}

class HabitTracker extends StatelessWidget {
  const HabitTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child) => ResponsiveBreakpoints.builder(
        breakpoints: const [
          Breakpoint(start: 0, end: 480, name: MOBILE),
          Breakpoint(start: 481, end: 800, name: TABLET),
          Breakpoint(start: 801, end: 1920, name: DESKTOP),
          Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
        child: child!,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      initialBinding: BindingsBuilder(() {
        Get.put(PushNotificationController());
      }),
      getPages: getPage,
    );
  }
}
