import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

Widget menuWidget(
   context,
){
  return IconButton(onPressed: () => ZoomDrawer.of(context)!.toggle(),
   icon: Icon(Icons.menu));
}