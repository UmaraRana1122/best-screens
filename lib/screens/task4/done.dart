import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyTask4 extends StatefulWidget {
  const MyTask4({super.key});

  @override
  State<MyTask4> createState() => _MyTask4State();
}

class _MyTask4State extends State<MyTask4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          // bottom: false,
          child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Color(0xff5782f0),
                          size: 3.h,
                        ),

                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          'You are Done!',
                          style: TextStyle(
                              color: Color(0xff5B88FB),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 35.w,
                        ),
                        Text(
                          'Okay, got it',
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Color(0xffdddddd),
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xffdddddd),
                              decorationThickness: 1),
                              
                        ),
                      ],
                      
                      
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      'Congratulations! You are Done! Do not forget to verify your email!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff8392a9),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 3.5.h,
                    ),
                    Text(
                      'A verified email address is required to\n message members on Sweender',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xffdfdfdf),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Text(
                      'We sent a verification email to,',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xffdfdfdf),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      ' dummyemail@email.com',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff4d71d1),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Dont get an email?',
                            style: TextStyle(
                                color: Color(0xffdfdfdf),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400))),
                    SizedBox(
                      height: 1.h,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 13.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            color: Color(0xff2c2f3a),
                            borderRadius: BorderRadius.circular(15)),
                        child: Positioned.fill(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/icons/ic1.png",
                                  height: 5.h,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Expanded(
                                  child: RichText(
                                      text: TextSpan(
                                    text: "Check Spam Folder - ",
                                    style: TextStyle(
                                        color: Color(0xff5B88FB),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                    children: [
                                      TextSpan(
                                          text:
                                              " Sometimes our emails are misudentified as spam, so be sure to check your spam folder and mark us as “Not Spam” if you find your verification email there!",
                                          style: TextStyle(
                                              color: Color(0xff5B88FB),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w300))
                                    ],
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1.6.h,
                    ),
                    Container(
                      height: 13.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          color: Color(0xff2c2f3a),
                          borderRadius: BorderRadius.circular(15)),
                      child: Positioned.fill(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/icons/at 1.png",
                                height: 5.h,
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Expanded(
                                child: RichText(
                                    text: TextSpan(
                                  text: "Change Email - ",
                                  style: TextStyle(
                                      color: Color(0xff5B88FB),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                        text:
                                            " If you mistyped your email address (you can check above), or you just want to try a different account, you can  ",
                                        style: TextStyle(
                                            color: Color(0xff5B88FB),
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w300)),
                                    TextSpan(
                                        text: "change your email address here.",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: Color(0xff5B88FB),
                                            decorationThickness: 1))
                                  ],
                                )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1.6.h,
                    ),
                    Container(
                      // height: 10.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          color: Color(0xff2c2f3a),
                          borderRadius: BorderRadius.circular(15)),
                      child: Positioned.fill(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/icons/envelope-2 1.png",
                                height: 5.h,
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Expanded(
                                child: RichText(
                                    text: TextSpan(
                                  text: "Resend Email - ",
                                  style: TextStyle(
                                      color: Color(0xff5B88FB),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                        text:
                                            "  We can send you a verification email again. ",
                                        style: TextStyle(
                                            color: Color(0xff5B88FB),
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w300)),
                                    TextSpan(
                                        text: "Resend your verification email.",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: Color(0xff5B88FB),
                                            decorationThickness: 1))
                                  ],
                                )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    Container(
                      height: 5.5.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xffb52d44),
                            Color(0xff7c4f8c),
                            Color(0xff4a70cc).withOpacity(0.9)
                          ],
                        ),
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Show me Established Members',
                            style: TextStyle(
                                color: Color(0xfff8f6fa),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400),
                          )
                          ),
                    ),
                  ],
                )
                ),
          ),
        ));
  }
}
