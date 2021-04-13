import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techlite/controller/page_navigation_controller/page_navigation_controller.dart';
import 'package:techlite/view/screens/page_navigation_controller/page_controller.dart';
import 'package:techlite/viewmodel/user_viewmodel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final userController = Get.put(UserViewModel());
  final pageNavigateController = Get.put(NavigationPageControllor());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Techtile Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageControllerView(),
    );
  }
}
