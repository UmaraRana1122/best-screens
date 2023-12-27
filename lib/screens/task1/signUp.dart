import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/controller/auth.dart';

class MyTask extends StatelessWidget {
  const MyTask({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (context) => Scaffold(
            backgroundColor: const Color(0xff383b43),
            body: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Container(
                    height: 50.h,
                    width: 80.w,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/walk_through.png'))),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 100.w,
                    height: 48.h,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                        color: Color(0xff1f2125)),
                    child: Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: Column(
                        children: [
                          SizedBox(height: 2.h),
                          Container(
                            height: 6.8.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff32d7e2),
                            ),
                            child: Center(
                                child: Text(
                              'Sign Up With Email',
                              style: TextStyle(
                                  fontSize: 17.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                          SizedBox(height: 3.h),
                          Text(
                            'Or Sign Up With',
                            style: TextStyle(
                                color: Color(0xffb6b7b9), fontSize: 18),
                          ),
                          SizedBox(height: 3.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 8.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border:
                                          Border.all(color: Color(0xff444651))),
                                  child: const Icon(
                                    Icons.apple,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Expanded(
                                child: Container(
                                  height: 8.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      // image: const DecorationImage(image: AssetImage('assets/images/twitter.png',),),

                                      border: Border.all(
                                        color: Color(0xff444651),
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Image.asset(
                                        'assets/logo/twitter_logo.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Expanded(
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 8.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              color: Color(0xff444651))),
                                    ),
                                    Positioned.fill(
                                        child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/logo/google_logo.png',
                                          height: 4.h,
                                        ),
                                      ],
                                    ))
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 7.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already have an account?',
                                style: TextStyle(
                                  color: Color(0xffcdcdce),
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(width: 1.w),
                              Text(
                                'Sign in now',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.blue,
                                    decorationThickness: 1),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
