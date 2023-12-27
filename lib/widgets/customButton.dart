import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget customSelectButton(
  context, {
  bool isIcon = true,
  bool isBorder = true,
}

// {bool bgColor=false,
// String b=false,
// }
    ) {
  return Container(
    height: 7.h,
    width: 80.w,
    decoration: BoxDecoration(
      color: isBorder ? Colors.transparent : Colors.red,
      border: isBorder ? Border.all(color: Color(0xff002065)) : null,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      children: [
        Spacer(),
        Text(
          'Select Type',
          style: TextStyle(
              color: Color(0xff002065),
              fontSize: 16.5.sp,
              fontWeight: FontWeight.w600),
        ),
        Spacer(),
        isIcon
            ? Image.asset(
                "assets/icons/down.png",
                height: 1.2.h,
              )
            : SizedBox(),
        SizedBox(
          width: 2.w,
        ),
      ],
    ),
  );
}
