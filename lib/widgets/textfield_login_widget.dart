import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techlite/constant/style_constant.dart';
import 'package:techlite/viewmodel/user_viewmodel.dart';

class FormTextFieldWidget extends StatelessWidget {
  final Size size;
  final String hint;
  final bool isPassword;
  FormTextFieldWidget({
    @required this.hint,
    @required this.size,
    @required this.isPassword,
  });
  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserViewModel>(
      builder: (userViewModel) => Container(
        width: size.width * .94,
        height: size.height * .1,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(
          left: 20,
          top: 5,
        ),
        decoration: BoxDecoration(
            color: Color.fromRGBO(247, 248, 255, 1),
            borderRadius: BorderRadius.all(
              Radius.circular(size.height * .1),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.2),
                spreadRadius: .1,
                blurRadius: 5,
                offset: Offset(3, 3),
              )
            ]),
        child: TextFormField(
          onSaved: (val) {
            hint == 'Password'
                ? userViewModel.password = val
                : hint == 'Email'
                    ? userViewModel.email = val
                    : userViewModel.name = val;
          },
          validator: (textValue) {
            if (textValue.isNotEmpty) {
              if (hint != 'Email') {
                if (textValue.length < 6) {
                  return 'Please enter at least 6 characters';
                } else
                  return null;
              } else {
                final pattern =
                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                final regExp = RegExp(pattern);
                if (!regExp.hasMatch(textValue)) {
                  return 'Please enter a valid email';
                } else
                  return null;
              }
            } else {
              return 'Do not leave blank';
            }
          },
          obscureText: isPassword,
          style: StyleConstant.textFormFiledStyle,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: StyleConstant.textFormFiledStyle,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
