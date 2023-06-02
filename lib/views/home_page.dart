import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:habit_tracker/controller/home_page_controller.dart';
import 'package:habit_tracker/controller/push_notification_controller.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "/homePage";
  final hpc = Get.find<HomePageController>();
  final pnc = Get.put<PushNotificationController>(PushNotificationController());
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notify'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'App for capturing Firebase Push Notifications',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 16.0),
            const SizedBox(height: 16.0),
            pnc.notificationInfo.value != null
                ? Obx(() => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TITLE: ${pnc.notificationInfo.value!.title}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          'BODY: ${pnc.notificationInfo.value!.body}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ))
                : Container(),
          ],
        ),
      ),
    );
  }
}
