

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:task1/screens/task9/drawerScreen.dart';
import 'package:task1/widgets/sideMenu.dart';

class DrawerScreen2 extends StatefulWidget {
  const DrawerScreen2({Key? key}) : super(key: key);

  @override
  State<DrawerScreen2> createState() => _DrawerScreen2State();
}

class _DrawerScreen2State extends State<DrawerScreen2> {

  final zoomDrawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuBackgroundColor: Colors.blue,
      controller: zoomDrawerController,
        menuScreen: const MainScreen(),
        mainScreen:  MainNavScreen(),
        shadowLayer1Color: Color(0xff212e5f),
        shadowLayer2Color: Color(0xff70317f),

      showShadow: true,
      style: DrawerStyle.defaultStyle,
      angle: 0.0,
      isRtl: false,
    );
  }
}
