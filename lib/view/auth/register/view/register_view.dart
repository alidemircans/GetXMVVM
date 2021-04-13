import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:techlite/view/auth/login/view/login_view.dart';
import 'package:techlite/view/auth/login/widgets/login_button_widget.dart';
import 'package:techlite/view/auth/login/widgets/login_page_back_widget.dart';
import 'package:techlite/view/auth/login/widgets/page_title_widget.dart';
import 'package:techlite/view/auth/register/widgets/register_button_widget.dart';
import 'package:techlite/widgets/textfield_login_widget.dart';
import 'package:techlite/viewmodel/user_viewmodel.dart';
import 'package:techlite/widgets/textstyle_generator.dart';

class RegisterViewPage extends StatefulWidget {
  @override
  _RegisterViewPageState createState() => _RegisterViewPageState();
}

class _RegisterViewPageState extends State<RegisterViewPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 244, 255, 1),
      body: Container(
        child: GetBuilder<UserViewModel>(
          builder: (userViewModel) => SingleChildScrollView(
            child: Form(
              key: userViewModel.registerFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height * .2,
                  ),
                  PageTitleWidet(
                    size: size,
                    text: 'Register',
                  ),
                  FormTextFieldWidget(
                    hint: 'Name',
                    size: size,
                    isPassword: false,
                  ),
                  FormTextFieldWidget(
                    hint: 'Email',
                    size: size,
                    isPassword: false,
                  ),
                  FormTextFieldWidget(
                    size: size,
                    hint: 'Password',
                    isPassword: true,
                  ),
                  RegisterButtonWidget(
                    size: size,
                    text: 'Create an account',
                  ),
                  InkWell(
                    onTap: () => Get.off(() => LoginViewPage()),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: TextStyleGenerator(
                        fontWeight: FontWeight.w300,
                        text: 'Do you have an account? Login',
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
      ),
    );
  }
}
