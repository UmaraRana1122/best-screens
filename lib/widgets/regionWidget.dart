import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget regionWidget({bool isSelect = false}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: Container(
      height: 7.h,
      // width: 90.w,
      decoration: BoxDecoration(
          color: isSelect ? Color(0xff002065) : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(40)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 5.w),
          Text(
            'Central & South American',
            style: TextStyle(
                color: isSelect ? Color(0xffFFFFFF) : Colors.black87,
                fontSize: 16.5.sp,
                fontWeight: isSelect ? FontWeight.w600 : FontWeight.w300),
          ),
          Spacer(),
          Icon(
            Icons.done,
            color: isSelect ? Color(0xffFFFFFF) : Colors.transparent,
          ),
          SizedBox(width: 3.w),
        ],
      ),
    ),
  );
}
