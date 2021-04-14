import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techlite/controller/page_navigation_controller/page_navigation_controller.dart';
import 'package:techlite/view/screens/home/widgets/bottom_%C4%B1tem_widget.dart';

class BottomAppBarWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GetBuilder<NavigationPageControllor>(
      builder: (val) => BottomAppBar(
        child: Container(
          color: Color.fromRGBO(243, 244, 245, 1),
          width: size.width,
          height: size.height * .1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: val.bottomItems.map((e) {
              return InkWell(
                onTap: () {
                  val.changeActivePage(e.index);
                },
                child: BottomItemWidget(
                  icon: e.icon,
                  text: e.text,
                  size: size,
                  isActive: e.index == val.activePage ? true : false,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
