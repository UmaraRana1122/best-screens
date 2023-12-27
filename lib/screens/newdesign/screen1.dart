import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/screens/newdesign/widgets.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

  List RandomImages = [
  "assets/images/anna.png",
];

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8b91b2),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 3.h,
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: Column(
          children: [
            topContainer(),
            Container(
              color: Color(0xff8841ae),
              child: Container(
                // height: 25.h,
                decoration: BoxDecoration(
                    color: Color(0xffde7099),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(70))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "TODAY 5:33 PM",
                        style: TextStyle(
                            color: Color(0xffe9dcea),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: .3.h,
                      ),
                      Text(
                        "Yoga and Meditation for Beginners",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 1.3.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 8),
                        child: Row(
                          children: [
                            for (int i = 0; i < RandomImages.length; i++)
                              Align(
                                widthFactor: 0.5,
                                // parent circle avatar.
                                // We defined this for better UI
                                child: CircleAvatar(
                                  radius: 3.2.h,
                                  backgroundColor: Colors.white,
                                  // Child circle avatar
                                  child: CircleAvatar(
                                    radius: 3.h,
                                    backgroundImage:
                                        AssetImage("assets/images/anna.png"),
                                  ),
                                ),
                              ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              "Join Anna57 & 10 others",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Color(0xff1b052b),
              child: Container(
                // height: 25.h,
                decoration: BoxDecoration(
                    color: Color(0xff8841ae),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(70))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "TODAY 5:33 PM",
                        style: TextStyle(
                            color: Color(0xffe9dcea),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        "Practice French, English and Chinese",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 1.3.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 8),
                        child: Row(
                          children: [
                            for (int i = 0; i < RandomImages.length; i++)
                              Align(
                                widthFactor: 0.5,
                                // parent circle avatar.
                                // We defined this for better UI
                                child: CircleAvatar(
                                  radius: 3.2.h,
                                  backgroundColor: Colors.white,
                                  // Child circle avatar
                                  child: CircleAvatar(
                                    radius: 3.h,
                                    backgroundImage:
                                        AssetImage("assets/images/anna.png"),
                                  ),
                                ),
                              ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              "Join Anna57 & 10 others",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Color(0xff8b91b2),
              child: Container(
                // height: 25.h,
                decoration: BoxDecoration(
                    color: Color(0xff1b052b),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(70))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "TODAY 5:33 PM",
                        style: TextStyle(
                            color: Color(0xffe9dcea),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        "Adobe XD Live Event in Europe",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 8),
                        child: Row(
                          children: [
                            for (int i = 0; i < RandomImages.length; i++)
                              Align(
                                widthFactor: 0.5,
                                // parent circle avatar.
                                // We defined this for better UI
                                child: CircleAvatar(
                                  radius: 3.2.h,
                                  backgroundColor: Colors.white,
                                  // Child circle avatar
                                  child: CircleAvatar(
                                    radius: 3.h,
                                    backgroundImage:
                                        AssetImage("assets/images/anna.png"),
                                  ),
                                ),
                              ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              "Join Anna57 & 10 others",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
