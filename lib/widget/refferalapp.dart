import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget refferCircle(
  String isImage,
) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: CircleAvatar(
      radius: 2.8.h,
      backgroundColor: Colors.black,
      child: CircleAvatar(
        radius: 2.7.h,
        backgroundColor: Color(0xff81c0bd),
        child: Image.asset(
          isImage,
          height: 3.h,
        ),
      ),
    ),
  );
}

Widget containerWidget(
  String text,
  String text2,
  Color color,
) {
  return Container(
    height: 9.h,
    width: 45.w,
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
    child: Column(
      children: [
        Spacer(),
        Text(
          text,
          style: TextStyle(
              color: Color(0xff0D0140),
              fontSize: 18.sp,
              fontWeight: FontWeight.w800),
        ),
        SizedBox(
          height: 1.h,
        ),
        Text(
          text2,
          style: TextStyle(
              color: Color(0xff0D0140),
              fontSize: 17.sp,
              fontWeight: FontWeight.w400),
        ),
        Spacer(
          flex: 1,
        ),
      ],
    ),
  );
}
