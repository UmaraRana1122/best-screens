import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
Widget drawCircle(
String text2,
Color color,
 String nameImage,


)

{
  
  return     Padding(
                                                            padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 10),


                   child: Container(
                     height: 5.h,
                     width: 42.w,
                     decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(15)),
                     child: Row(
                       children: [
                       Image.asset(nameImage,height: 1.7.h,),
                       SizedBox(width: 2.w,),
            
                             Text(text2,style: TextStyle(color: Color(0xffFFFFFF),fontSize: 15.sp,fontWeight: FontWeight.w400),),
                     ],),
                   ),
                 );                  
  
          
} 
Widget listWidget(
  String text,
  final isIcon,
){
  return  Padding(
               padding: const EdgeInsets.all(12.0),
               child: Row(
                 children: [
                  Icon(isIcon,color: Colors.white,),
                 SizedBox(width: 3.w,),
                           
                       Text(text,style: TextStyle(color: Color(0xffFFFFFF),fontSize: 15.sp,fontWeight: FontWeight.w600),),
               ],),
             );
}