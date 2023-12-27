import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class Virtual1 extends StatelessWidget {
  const Virtual1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2d4c5e),
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height:50.h),

            Text("Ready made \nrooms to go",style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w600),),
            SizedBox(height:4.h),
            Text("Virtual digital showrooms transform your dreams into reality at one touch of \nscreen.",style: TextStyle(color: Color(0xff718fa0),fontSize: 17.sp,fontWeight: FontWeight.w600),),
            SizedBox(height:3.h),

            Center(
              child: Container(
                height: 8.h,
                width: 80.w,
                decoration: BoxDecoration(color: Colors.transparent,border: Border.all(color: Color(0xff878c8c),width: .6.w),borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
            Text("Get Started",style: TextStyle(color: Color(0xffccc6bd),fontSize: 18.sp,fontWeight: FontWeight.w600),),
            Icon(Icons.arrow_forward_rounded,color: Color(0xffccc6bd),)

                  ],),
                ),
              ),
            ),

          

          ],),
        ),
      ),
    );
  }
}