
import 'package:flutter/material.dart';
import 'package:blur/blur.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Blur(
            blur: 0,
            blurColor: Colors.black26,
            child: Container(
              height: 100.h,
              child:
                  Image.asset('assets/images/background.jpg', fit: BoxFit.fill),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50.h,
              width: 100.w,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color(0xff001c57),
                    Color(0xff081945).withOpacity(0.01)
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            bottom: false,
            child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/logo/logo1.png',
                  height: 8.h,
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 45.h,
              child: Column(
                children: [
                  Text(
                    'Are you a user\n or Establishment?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xffe3b921),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Container(
                    height: 20.h,
                    width: 80.w,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                      'assets/logo/user.png',),
                                      SizedBox(height: 3.h,),
                                      Text('User',style: TextStyle(color: Colors.white),)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Container(
                          height: 20.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                      'assets/logo/fork_knives.png',),
                                      SizedBox(height: 3.h,),
                                      Text('Establishment',style: TextStyle(color: Colors.white),)
                              ],
                            ),
                        ),
                      ],
                    ),
                    
                    
                  ),
                  SizedBox(height: 5.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?',
                      style: TextStyle(color: Colors.white,fontSize: 15.sp),),
                      SizedBox(
                        width: 1.w,
                      ),
                      Text('Log in',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                                decorationColor: Colors.white,
                                decorationThickness: 1),
                                )
                    ],
                  ),
                  Spacer(),

                ],
              ),
              
            ),
          ),
          
        ],
      ),
      
    );
  }
}
