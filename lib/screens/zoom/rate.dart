import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class RateUs extends StatelessWidget {
  const RateUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.green,
       title: Text("Rate Us Page"),
       leading:
    InkWell(
      onTap: (){
        //  ZoomDrawer.of(context)!.toggle();
      },
      child: Icon(Icons.menu)),
     ),
     body: Center(
       child: Column(children: [
        SizedBox(height:18.h ,),
        Icon(Icons.star_border_outlined,color: Colors.black,size: 15.h,),
        Text("Rate Us",style: TextStyle(color: Colors.black,fontSize: 25.sp,fontWeight: FontWeight.w500),)
       ],),
     ),
     
    );
  }
}