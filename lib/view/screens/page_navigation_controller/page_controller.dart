import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techlite/controller/page_navigation_controller/page_navigation_controller.dart';
import 'package:techlite/view/screens/page_navigation_controller/widgets/bottom_appbar_widget.dart';

import '../home/widgets/bottom_ıtem_widget.dart';

class PageControllerView extends StatefulWidget {
  @override
  _PageControllerViewState createState() => _PageControllerViewState();
}

class _PageControllerViewState extends State<PageControllerView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: GetBuilder<NavigationPageControllor>(
        builder: (val) => val.pages[val.activePage],
      ),
      bottomNavigationBar: BottomAppBarWidgets(),
    );
  }
}
