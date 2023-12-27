import 'package:flutter/material.dart';
import 'package:task1/widgets/zoomWidget.dart';
class ZoomDrawer1 extends StatelessWidget {
  const ZoomDrawer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.blueAccent,
       title: Text("Payment Page"),
       leading:menuWidget(context) ,
     ),
     
    );
  }
}