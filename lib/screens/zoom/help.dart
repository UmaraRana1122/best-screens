import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/widgets/zoomWidget.dart';
class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.green,
       title: Text("Help Page"),
       leading:menuWidget(context) ,
     ),
     body: Center(
       child: Column(children: [
        SizedBox(height:18.h ,),
        Icon(Icons.help,color: Colors.black,size: 15.h,),
        Text("Help ",style: TextStyle(color: Colors.black,fontSize: 23.sp,fontWeight: FontWeight.w500),)
       ],),
     ),
     
    );
  }
}