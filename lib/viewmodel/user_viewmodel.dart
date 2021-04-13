import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techlite/core/services/api_services.dart';
import 'package:techlite/view/screens/home/view/home_view.dart';

enum UserEnums { Logged, Logout, Waiting, Error, Initial }

class UserViewModel extends GetxController {
  ApiServices _apiServices = ApiServices();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();

  UserEnums userEnums = UserEnums.Initial;

  String name;
  String email;
  String password;

  void login(apiEmail, apiPassword) {
    print(apiEmail);
    userEnums = UserEnums.Waiting;
    update();
    _apiServices.login(apiEmail, apiPassword).then((value) {
      if (value == false) {
        userEnums = UserEnums.Error;
        debugPrint('There was a problem with user login....');
      } else {
        Get.offAll(
            () => HomeViewPage()); // it's delete all pages at navigate stack
      }
    });
  }

  void register(apiName, apiEmail, apiPassword) {
    print(apiName);
    print(apiEmail);
    print(apiPassword);

    userEnums = UserEnums.Waiting;
    update();
    _apiServices.register(apiName, apiEmail, apiPassword).then((value) {
      if (value == false) {
        userEnums = UserEnums.Error;
        debugPrint('There was a problem with user register....');
      } else {}
    });
  }
}
