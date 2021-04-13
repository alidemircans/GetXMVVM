import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techlite/view/screens/foryou/view/foryou_view.dart';
import 'package:techlite/view/screens/home/view/home_view.dart';
import 'package:techlite/view/screens/page_navigation_controller/model/bottom_appbar_item_model.dart';

class NavigationPageControllor extends GetxController {
  var pages = [
    HomeViewPage(),
    ForYouView(),
    HomeViewPage(),
    HomeViewPage(),
  ];
  var bottomItems = [
    BottomItemModel(icon: Icons.explore, text: "Explore", index: 0),
    BottomItemModel(icon: Icons.star, text: "For You", index: 1),
    BottomItemModel(icon: Icons.wallet_giftcard, text: "Wallet", index: 2),
    BottomItemModel(icon: Icons.person, text: "Profile", index: 3),
  ];
  var activePage = 0;

  changeActivePage(int index) {
    activePage = index;
    update();
  }
}
