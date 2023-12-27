import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../controller/auth.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (AuthController con) => Scaffold(
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
                  Stack(
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
                      SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Center(
                              //   child: Image.asset(
                              //     "assets/logo/logo1.png",
                              //     height: 5.h,
                              //   ),
                              // ),
                              Spacer(),
                              Text(
                                'Register',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 21.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Text(
                                'Welcome! Register as a establishment to  post 180 character news bites of events and special offers.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff4b494a),
                                    fontSize: 16.7.sp,
                                    fontWeight: FontWeight.w300),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              TextField(
                                controller: con.username,
                                style: TextStyle(color: Color(0xffdcdcdd)),
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffe0e0e0),
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffe0e0e0),
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  hintText: 'Enter username',
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Color(0xffbcc4d7),
                                  ),
                                  hintStyle:
                                      TextStyle(color: Color(0xff7a7b7e)),
                                ),
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
                                        color: Color(0xffe0e0e0),
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xff355086),
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  hintText: 'Enter email',
                                  prefixIcon: Icon(
                                    Icons.mail_outline,
                                    color: Color(0xff355086),
                                  ),
                                  hintStyle:
                                      TextStyle(color: Color(0xff7a7b7e)),
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
                                        color: Color(0xffe0e0e0),
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xff355086),
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  hintText: 'Enter password here',
                                  prefixIcon: Icon(
                                    Icons.lock_outline,
                                    color: Color(0xff355086),
                                  ),
                                  hintStyle:
                                      TextStyle(color: Color(0xff7a7b7e)),
                                ),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              TextField(
                                controller: con.cPassword,
                                style: TextStyle(color: Color(0xffdcdcdd)),
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffe0e0e0),
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xff355086),
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  hintText: 'Confirm password',
                                  prefixIcon: Icon(
                                    Icons.lock_outline,
                                    color: Color(0xff355086),
                                  ),
                                  hintStyle:
                                      TextStyle(color: Color(0xff7a7b7e)),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        check = !check;
                                      });
                                    },
                                    child: CircleAvatar(
                                      radius: 1.3.h,
                                      backgroundColor: Colors.grey,
                                      child: check
                                          ? CircleAvatar(
                                              radius: 0.9.h,
                                              backgroundColor: Colors.cyan,
                                            )
                                          : SizedBox(),
                                    ),
                                  ),
                                  SizedBox(width: 3.w),
                                  Text('I agree to abide by the '),
                                  Text(
                                    'Terms of Service.',
                                    style: TextStyle(
                                        color: Color(0xff3b3938),
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Color(0xff3b3938),
                                        decorationThickness: 1),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: (() {
                                      con.registerUser();
                                    }),
                                    child: Container(
                                      height: 6.8.h,
                                      width: 90.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xff1e3a77),
                                      ),
                                      child: Center(
                                          child: Text(
                                        'Sign Up',
                                        style: TextStyle(
                                            fontSize: 17.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(
                                flex: 6,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ));
  }
}
