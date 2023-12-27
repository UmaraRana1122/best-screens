import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'mainScreen.dart';
import 'menuScreen.dart';

class DrawerScreen3 extends StatefulWidget {
  const DrawerScreen3({Key? key}) : super(key: key);

  @override
  State<DrawerScreen3> createState() => _DrawerScreen3State();
}

class _DrawerScreen3State extends State<DrawerScreen3> {

  final zoomDrawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: zoomDrawerController,
        menuScreen: const MenuScreen(),
        mainScreen: const MainScreen(),
      showShadow: true,
      style: DrawerStyle.defaultStyle,
      angle: 0.0,
      isRtl: false,
    );
  }
}