import 'dart:ui';

// import 'package:dashed_circle/dashed_circle.dart';
import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class LoginSignUp extends StatelessWidget {
  const LoginSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       
        backgroundColor: Color(0xff010101),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical:10),
          child: SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 2.h,
                    backgroundColor: Color(0xff33394d),
              child: Image.asset('assets/icons/arrr.png',color: Color(0xffFFFFFF),height: 2.h,),
                    
                  ),
                  Column(

                    children: [
                      Align(alignment: Alignment.center,
                        child: Image.asset('assets/images/lll.png',height: 30.h,)),
                      
                    ],
                  ),
                  Align(alignment: Alignment.center,
                    child: Text('Verification',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 22.sp,fontWeight: FontWeight.w500),)),
                    SizedBox(height: 1.h,),
                   Align(alignment: Alignment.center,
                    child: Text('Please upload your ID for personal verification',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16.sp,fontWeight: FontWeight.w500),)),
                   SizedBox(height: 5.h,),
          Align(alignment: Alignment.center,
            child: Stack(
              children: [
                FDottedLine(
            color: Colors.grey,
            height: 19.h,
            width: 19.h,
            space: 3.0,
            strokeWidth: 2,
            
            /// Set corner
            corner: FDottedLineCorner.all(100),
            
                  
                ),
                Positioned.fill(child: Align(
                  alignment: Alignment.center,
                  child: Image.asset("assets/icons/llll.png",height: 7.h ,fit: BoxFit.contain,)))
              ],
            ),
          ),
                   SizedBox(height: 2.h,),

          Align(alignment: Alignment.center,
            child: Text('Upload ID in JPG or PDF format',style: TextStyle(color: Color(0xffEC4EC0),fontSize: 16.sp,fontWeight: FontWeight.w500),)),
                   SizedBox(height: 6.h,),

               Container(
  height: 7.h,
  width: 100.w,
  decoration: BoxDecoration(color: Color(0xff6b29b5),borderRadius: BorderRadius.circular(30)),
child: Align(alignment: Alignment.center,
  child: Text('Register',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 17.sp,fontWeight: FontWeight.w500),)),
),
                ],
              ),
              
            ),
          ),
        ),
    

    );
  }
}

