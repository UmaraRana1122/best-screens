import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class MyPlan2 extends StatelessWidget {
  const MyPlan2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f1f1e),
      body: Center(
        child: Container(
          height: 30.h,
          width: 90.w,
          decoration: BoxDecoration(color: Color(0xffe7e7e7),
          borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 0),
            child: Column(
              children: [
                Spacer(),
                // SizedBox(height: 3.h,),
                Text('Boost the Bite for \$1.00',style: TextStyle(color: Color(0xff3C3939),fontSize: 16.sp,fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 1.5.h,),
                Text('For only \$1 your news bite will be boosted to within the top 5 positions in local user feeds for three days',style: TextStyle(color:Color(0xff343434),fontSize: 15.5.sp,fontWeight: FontWeight.w300, ),
                textAlign: TextAlign.center,),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5.h,
                      width: 30.w,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0xffFFFFFF),border: Border.all(color: Color(0xff002065),width: 0.5)
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('No',style: TextStyle(color: Color(0xff002065),fontSize: 15.sp,fontWeight: FontWeight.w500),)),
                    ),
                    SizedBox(width: 3.w,),
                    Container(
                      height: 5.h,
                      width: 30.w,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0xff002065),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('Yes',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 15.sp,fontWeight: FontWeight.w500),)),
                    ),
                  ],
                ),SizedBox(height: 5.h,)

              ],
              
            ),
          ),
        ),
      ),
    );
  }
}