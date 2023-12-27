import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Profile2 extends StatelessWidget {
  const Profile2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            // height: 100.h,
            // width: 100.w,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff280353),
                  Color(0xff0d032b),
                ],
              ),
            ),
          ),
          SafeArea(
            bottom: false,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 2.h,
                          backgroundColor: Color(0xff4f3a85),
                          child: Image.asset(
                            'assets/icons/one1.png',
                            color: Color(0xffFFFFFF),
                            height: 2.h,
                          ),
                        ),
                        CircleAvatar(
                          radius: 2.h,
                          backgroundColor: Color(0xff4f3a85),
                          child: Image.asset(
                            'assets/icons/x.png',
                            color: Color(0xffFFFFFF),
                            height: 2.5.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 7.5.h,
                    backgroundColor: Color(0xff6b28b7),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    '@Ghost',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 6.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                                color: Color(0xff6b29b5),
                                borderRadius: BorderRadius.circular(27)),
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Follow',
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w500),
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 1.5.h,
                        ),
                        CircleAvatar(
                          radius: 3.h,
                          backgroundColor: Color(0xffff5a60),
                          child: Image.asset(
                            'assets/icons/sui.png',
                            color: Color(0xffFFFFFF),
                            height: 3.5.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'Past Vybes',
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      )),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Container(
                              width: 45.w,
                              decoration: BoxDecoration(
                                color: Color(0xff431674),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Container(
                                      height: 13.h,
                                      color: Color(0xff775383),
                                      // decoration: ,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12.0, vertical: 4),
                                    child: Text(
                                      "Blackout",
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Container(
                              width: 45.w,
                              decoration: BoxDecoration(
                                color: Color(0xff431674),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Container(
                                      height: 13.h,
                                      color: Color(0xff775383),
                                      // decoration: ,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12.0, vertical: 4),
                                    child: Text(
                                      "Blackout",
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Container(
                              width: 45.w,
                              decoration: BoxDecoration(
                                color: Color(0xff431674),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Container(
                                      height: 13.h,
                                      color: Color(0xff775383),
                                      // decoration: ,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12.0, vertical: 4),
                                    child: Text(
                                      "Blackout",
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        Text(
                          'Social Media',
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/icons/11.png',
                          height: 3.5.h,
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Image.asset(
                          'assets/icons/22.png',
                          height: 3.5.h,
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Image.asset(
                          'assets/icons/33.png',
                          height: 3.5.h,
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Image.asset(
                          'assets/icons/77.png',
                          height: 3.5.h,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: Color(0xff0a011c),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        )),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Text(
                            'Next Event',
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          height: 20.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                              color: Color(0xff775383),
                              borderRadius: BorderRadius.circular(22)),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Container(
                          height: 6.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                              color: Color(0xff6b29b5),
                              borderRadius: BorderRadius.circular(25)),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Buy Now',
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
