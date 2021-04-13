import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:techlite/view/auth/login/widgets/login_button_widget.dart';
import 'package:techlite/view/auth/login/widgets/login_page_back_widget.dart';
import 'package:techlite/view/auth/login/widgets/page_title_widget.dart';
import 'package:techlite/view/auth/register/view/register_view.dart';
import 'package:techlite/widgets/textfield_login_widget.dart';
import 'package:techlite/viewmodel/user_viewmodel.dart';
import 'package:techlite/widgets/textstyle_generator.dart';

class LoginViewPage extends StatefulWidget {
  @override
  _LoginViewPageState createState() => _LoginViewPageState();
}

class _LoginViewPageState extends State<LoginViewPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 244, 255, 1),
      body: GetBuilder<UserViewModel>(
        builder: (userViewModelLogin) => Container(
          child: Form(
            key: userViewModelLogin.loginFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PageTitleWidet(
                  size: size,
                  text: 'Login',
                ),
                FormTextFieldWidget(
                  size: size,
                  hint: 'Email',
                  isPassword: false,
                ),
                FormTextFieldWidget(
                  hint: 'Password',
                  size: size,
                  isPassword: true,
                ),
                LognButtonWidget(
                  size: size,
                  text: 'Login',
                ),
                InkWell(
                  onTap: () => Get.off(() => RegisterViewPage()),
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: TextStyleGenerator(
                      fontWeight: FontWeight.w300,
                      text: 'Dont have an account? Register now',
                      size: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
