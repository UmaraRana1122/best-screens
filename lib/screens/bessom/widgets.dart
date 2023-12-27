import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget besomContainer(
  String text,
  String text2,
  String text3,
  String isImage,
  Color color,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 14.0),
    child: Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          width: 100.w,
          height: 28.h,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  text2,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Container(
                  width: 30.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(12)),
                  child: Align(
                      child: Text(
                    text3,
                    style: TextStyle(
                        color: Color(0xfff1bf42),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600),
                  )),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: 25.h,
            width: 30.w,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20)),
            child: OverflowBox(
              alignment: Alignment.bottomCenter,
              minWidth: 0.0,
              minHeight: 0.0,
              maxWidth: 30.w,
              maxHeight: 60.h,
              child: Image.asset(
                isImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget besomContainer2(
  String text,
  String text2,
  String text3,
  String text4,
  String isImage,
  Color color,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 14.0),
    child: Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          width: 100.w,
          height: 29.h,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    Text(
                      text4,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      text2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                Container(
                  width: 30.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(12)),
                  child: Align(
                      child: Text(
                    text3,
                    style: TextStyle(
                        color: Color(0xffdc6820),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600),
                  )),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: 25.h,
            width: 30.w,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20)),
            child: OverflowBox(
              alignment: Alignment.bottomCenter,
              minWidth: 0.0,
              minHeight: 0.0,
              maxWidth: 30.w,
              maxHeight: 60.h,
              child: Image.asset(
                isImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget imageContainer(
  String isImage,
) {
  return Container(
    height: 8.5.h,
    width: 20.w,
    decoration: BoxDecoration(
      // borderRadius: BorderRadius.circular(10),
      color: Colors.transparent,
    ),
    child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          isImage,
          height: 2.7.h,
          width: 4.h,
          fit: BoxFit.fill,
        ),
      ),
    ),
  );
}
