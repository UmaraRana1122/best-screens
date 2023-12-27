import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/controller/auth.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (con) => Scaffold(
              backgroundColor: Colors.white,
              body: Stack(
                children: [
                  Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/Exclude.png"),
                            fit: BoxFit.cover)),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Image.asset(
                              "assets/images/yel.png",
                              height: 15.h,
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Image.asset(
                              "assets/images/blue.png",
                              height: 18.h,
                            )),
                      ],
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 28.0, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Center(
                          //     child: Image.asset(
                          //   "assets/logo/logo1.png",
                          //   height: 5.h,
                          // )),
                          // Spacer(),
                          Text(
                            'Welcome Back',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 21.sp,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          TextField(
                            controller: con.email,
                            style: TextStyle(color: Color(0xffdcdcdd)),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff3a3b40),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff7a7b7e),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              hintText: 'Enter email here',
                              prefixIcon: Icon(
                                Icons.email,
                                color: Color(0xff183573),
                              ),
                              hintStyle: TextStyle(color: Color(0xff7a7b7e)),
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          TextField(
                            controller: con.password,
                            style: TextStyle(color: Color(0xffdcdcdd)),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff3a3b40),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff7a7b7e),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              hintText: 'Enter password here',
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Color(0xff183573),
                              ),
                              hintStyle: TextStyle(color: Color(0xff7a7b7e)),
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          // Align(
                          //     alignment: Alignment.centerRight,
                          //     child: Text('Forgot password?')),
                          SizedBox(
                            height: 2.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              con.loginUser();
                            },
                            child: Container(
                              height: 6.8.h,
                              width: 90.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xff1e3a77),
                              ),
                              child: Center(
                                  child: Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              )),
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Dont have an account?',
                                style: TextStyle(
                                    color: Color(0xff4b494a), fontSize: 15.sp),
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              Text(
                                'Signup',
                                style: TextStyle(
                                    color: Color(0xff3f3d3d),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15.sp,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xff3f3d3d),
                                    decorationThickness: 1),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Center(
                            child: Container(
                              height: 6.8.h,
                              width: 75.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Color(0xffa1a1a1))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/logo/google_logo.png',
                                    height: 2.5.h,
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text('Continue with Google')
                                ],
                              ),
                            ),
                          ),

                          // Spacer(
                          //   flex: 2,
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }
}
