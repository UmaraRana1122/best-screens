import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget topContainer() {
  return Container(
    color: Color(0xffde7099),
    child: Container(
      // height: 25.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70))),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Spacer(),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 6.h,
                ),
                CircleAvatar(
                  radius: 3.3.h,
                  backgroundImage: AssetImage("assets/images/2.png"),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      backgroundColor: Color(0xff9898a8),
                      radius: 1.3.h,
                      child: Text(
                        "12",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "YOU",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                SizedBox(
                  height: 6.h,
                ),
                CircleAvatar(
                  radius: 3.h,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 2.8.h,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.trending_up_sharp,
                      color: Colors.black,
                      size: 4.h,
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "TRENDINGS",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                SizedBox(
                  height: 6.h,
                ),
                CircleAvatar(
                  radius: 3.h,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.favorite_outline_sharp,
                    color: Colors.black,
                    size: 5.h,
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "HEALTH",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    ),
  );
}
