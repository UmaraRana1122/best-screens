import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
Widget textFieldCustom(
  Color userColor,
  int userFont,

 {
  Color? filledColor,
 String hint ='Enter Your Name',
 int hintfont =16,
 }

  
){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical:12.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: TextField(
        maxLines: 1,
        style: TextStyle(
          color: userColor,
          fontSize: userFont.sp
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor:filledColor ?? Color(0xffF2F2F2),
          contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                                enabledBorder: InputBorder.none,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xff7a7b7e),
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                        disabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.transparent)),
                                hintText: hint,
                                hintStyle: TextStyle(color: Color(0xff7a7b7e),fontSize: hintfont.sp)),
        
      ),
    ),
  );
}