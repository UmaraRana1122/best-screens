import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/widgets/nevigation.dart';

class FavouraiteScreen extends StatelessWidget {
  final bool isDessert;
  const FavouraiteScreen({super.key, required this.isDessert});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: Align(
          alignment: Alignment.bottomRight,
          child: Container(
            width: 85.w,
            child: Padding(
              padding: EdgeInsets.only(left: 18.0, right: 18, top: 5.5.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/icons/pro2.png',
                        height: 4.5.h,
                      ),
                    ],
                  ),
                  isDessert
                      ? SizedBox()
                      : Text(
                          'Favourite',
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700),
                        ),
                  isDessert
                      ? Text(
                          'Food',
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400),
                        )
                      : SizedBox(),
                  isDessert
                      ? Text(
                          'Dessert',
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700),
                        )
                      : SizedBox(),
                  SizedBox(
                    height: 2.h,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      enabled: false,
                      border: InputBorder.none,
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.transparent)),
                      filled: true,
                      fillColor: Color(0xfff8f8f9),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.transparent)),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          color: Color(0xff8C8C8C),
                          fontWeight: FontWeight.w500,
                          fontSize: 16.5.sp),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Image.asset(
                          'assets/icons/sear.png',
                          height: 2.5.h,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(
                    children: [
                      SizedBox(
                        height: 3.h,
                      ),
                      customContainer('assets/images/y1.png',
                          'Molten Lava Cake', '99\$', '49\$'),
                      SizedBox(
                        height: 3.h,
                      ),
                      customContainer('assets/images/911.png', '12 Donuts',
                          '199\$', '99\$'),
                      SizedBox(
                        height: 3.h,
                      ),
                      customContainer('assets/images/911.png',
                          'Chocolate Brownies', '50\$', '25\$'),
                      SizedBox(
                        height: 3.h,
                      ),
                      customContainer('assets/images/911.png',
                          'Chilean Semolina Pudding', '50\$', '25\$'),
                      SizedBox(
                        height: 3.h,
                      ),
                      customContainer('assets/images/y1.png',
                          'Molten Lava Cake', '99\$', '49\$'),
                    ],
                  ),
                  ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
