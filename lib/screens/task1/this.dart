import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/widget/refferalapp.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Image.asset("assets/icons/ellipse.png"),
      SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Orlando ",
                            style: TextStyle(
                                color: Color(0xffBEE4E2),
                                fontSize: 19.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          // Image.asset(
                          //   "assets/images/community.png",
                          //   height: 5.h,
                          // )
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "TOTAL EARNING ",
                              style: TextStyle(
                                  color: Color(0xffBEE4E2),
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "PENDING ",
                              style: TextStyle(
                                  color: Color(0xffBEE4E2),
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "3,298 earn",
                              style: TextStyle(
                                  color: Color(0xffFCFAF2),
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "3,29 ",
                              style: TextStyle(
                                  color: Color(0xffFCFAF2),
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                    child: Container(
                        height: 27.h,
                        // width: 94.w,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xff81c0bd),
                                Color(0xff80bfbb),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Spacer(),
                              Align(
                                child: Text(
                                  "I Refer Now!",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 67.w,
                                    child: TextFormField(
                                      controller: _messageController,
                                      cursorColor: Color(0xff4B5768),
                                      style:
                                          TextStyle(color: Color(0xff4B5768)),
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 23.0, horizontal: 15),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xffD0D5DD),
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12))),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: .1.w,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15))),
                                          hintText: 'www.nutrition.com/skdnns',
                                          hintStyle: TextStyle(
                                              color: Color(0xff848484),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w300),
                                          suffixIconConstraints:
                                              BoxConstraints(),
                                          suffixIcon: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            //Text("🎉")
                                            child: Image.asset(
                                              "assets/icons/copy.png",
                                              height: 3.h,
                                            ),
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Container(
                                    height: 7.h,
                                    width: 15.w,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(18)),
                                    child: Center(
                                      child: Image.asset(
                                        "assets/icons/refresh.png",
                                        height: 3.h,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 2.5.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  refferCircle("assets/icons/twitter.png"),
                                  refferCircle("assets/icons/google.png"),
                                  refferCircle("assets/icons/faceb.png"),
                                  refferCircle("assets/icons/share.png"),
                                ],
                              ),
                              Spacer(
                                flex: 1,
                              )
                            ],
                          ),
                        ))),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Leads Information",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    Container(
                      height: 20.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                          color: Color(0xffBEE4E2),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Spacer(),
                          Image.asset(
                            "assets/icons/head.png",
                            height: 5.h,
                          ),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          Text(
                            "44.5k",
                            style: TextStyle(
                                color: Color(0xff0D0140),
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            "Leads Completed",
                            style: TextStyle(
                                color: Color(0xff0D0140),
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          Spacer(
                            flex: 1,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Column(
                      children: [
                        containerWidget(
                            "66.8k", "Open Leads", Color(0xffC3DDFD)),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        containerWidget(
                            "10k", "Active Users", Color(0xffCEF2C0)),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Recent Transactios",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  height: 10.h,
                  width: 93.w,
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 20),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/merry.png",
                          height: 8.h,
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Richel merry",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: .5.h,
                            ),
                            Text(
                              "Sat 24, September",
                              style: TextStyle(
                                  color: Color(0xff76848B),
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "25\$",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 19.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: .5.h,
                            ),
                            Text(
                              "Count 3",
                              style: TextStyle(
                                  color: Color(0xff76848B),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ]));
  }
}
