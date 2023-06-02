import 'package:get/get.dart';
import 'package:habit_tracker/controller/home_page_controller.dart';
import 'package:habit_tracker/views/home_page.dart';

var getPage = [
  GetPage(
    name: HomePage.routeName,
    page: () => HomePage(),
    binding: BindingsBuilder(
      () {
        Get.lazyPut(() => HomePageController());
      },
    ),
  ),
];
