
import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/controller/auth.dart';

class MyTask2 extends StatefulWidget {
  const MyTask2({super.key});

  @override
  State<MyTask2> createState() => _MyTask2State();
}

bool _isChecked = false;
TextEditingController email = TextEditingController();
TextEditingController username = TextEditingController();

class _MyTask2State extends State<MyTask2> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (con) => GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus!.unfocus();
              },
              child: Scaffold(
                resizeToAvoidBottomInset: false,
                appBar: AppBar(
                  leadingWidth: 14.w,
                  leading: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      color: Colors.black12,
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 2.2.h,
                      ),
                    ),
                  ),
                  backgroundColor: Color(0xff1f2125),
                  // title: Image.asset(
                  //   "assets/images/map.png",
                  //   height: 5.h,
                  // ),
                ),
                backgroundColor: const Color(0xff1f2025),
                body: Stack(
                  children: [
                    Container(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Container(
                        height: 12.h,
                        width: 100.w,
                        decoration: const BoxDecoration(
                            color: Color(0xff30d8e3),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(35),
                                topRight: Radius.circular(35))),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(),
                            Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            Spacer(
                              flex: 3,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 80.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            color: Color(0xff1f2126),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(26.0),
                          child: ListView(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.sp),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              TextField(
                                controller: con.email,
                                onSubmitted: ((value) {
                                  setState(() {
                                    email.text = value;
                                  });
                                }),
                                style: TextStyle(color: Color(0xffdcdcdd)),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xff3a3b40),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xff7a7b7e),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    hintText: 'youremail@email.com',
                                    hintStyle:
                                        TextStyle(color: Color(0xff7a7b7e))),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Text(
                                'Username',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.sp),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              TextField(
                                controller: con.username,
                                onSubmitted: ((value) {
                                  setState(() {
                                    username.text = value;
                                  });
                                }),
                                style: TextStyle(color: Color(0xffdcdcdd)),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xff3a3b40),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xff7a7b7e),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    hintText: 'Enter your username',
                                    hintStyle:
                                        TextStyle(color: Color(0xff7a7b7e))),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Text(
                                'Password',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.sp),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              TextField(
                                controller: con.password,
                                obscureText: true,
                                style: TextStyle(color: Color(0xffdcdcdd)),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xff3a3b40),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xff7a7b7e),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    hintText: 'Pick a strong password',
                                    hintStyle:
                                        TextStyle(color: Color(0xff7a7b7e))),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Text(
                                'Confirm Password',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.sp),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              TextField(
                                controller: con.cPassword,
                                style: TextStyle(color: Color(0xffdcdcdd)),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xff3a3b40),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xff7a7b7e),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    hintText:
                                        'Type again your passsword to confirm',
                                    hintStyle:
                                        TextStyle(color: Color(0xff7a7b7e))),
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Transform.scale(
                                    scale: 5,
                                  ),
                                  // Transform.scale(
                                  //   scale: 1.4,
                                  //   child: Checkbox(

                                  //       value: _isChecked,
                                  //       activeColor: Colors.transparent,
                                  //       checkColor: Colors.cyan,

                                  //       side: BorderSide(
                                  //         color: Color(0xff7a7b7e),
                                  //       ),

                                  //       onChanged: ((value) {
                                  //         setState(() {
                                  //           _isChecked = !_isChecked;
                                  //         });
                                  //       }

                                  //       )),
                                  // ),
                                  CustomCheckBox(
                                    value: _isChecked,
                                    shouldShowBorder: true,
                                    borderColor: Colors.grey,
                                    uncheckedFillColor: Colors.black26,
                                    uncheckedIconColor: Colors.transparent,
                                    checkedIconColor: Colors.cyan,
                                    checkedFillColor: Colors.black26,
                                    borderRadius: 8,
                                    borderWidth: 1,
                                    checkBoxSize: 22,
                                    onChanged: (val) {
                                      //do your stuff here
                                      setState(() {
                                        _isChecked = val;
                                      });
                                    },
                                  ),
                                  Text(
                                    'I agree to',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18.sp),
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Text(
                                    'Term of Service',
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
                              SizedBox(
                                height: 3.h,
                              ),
                              InkWell(
                                onTap: () {
                                  con.registerUser();
                                },
                                child: Container(
                                  height: 6.8.h,
                                  width: 90.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xff32d7e2),
                                  ),
                                  child: Center(
                                      child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        fontSize: 17.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  )),
                                ),
                              ),
                              SizedBox(
                                height: 40.h,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
