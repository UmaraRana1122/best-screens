import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
Widget foodItems(
Color color,
 String text,
 String nameImage,
 {
double imgWidth =45
 }
//  String height,
//  String width,
)

{
  
  return                       
   Padding(
     padding: const EdgeInsets.symmetric(vertical:14.0),
     child: Stack(
      alignment: Alignment.centerLeft,
                      children: [
                        Container(
                          width: 68.w,
                          height: 9.h ,
                            decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(20)),
                        ),
                             Align(
                              alignment: Alignment.centerLeft,
                               child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal:14.0),
                                child:
                                 Text(text,style: TextStyle(color: Color(0xffFFFFFF),fontSize: 19.sp,fontWeight: FontWeight.w700),),
                                                       ),
                             ),
                        
                        Align(alignment: Alignment.centerRight,
                
                          child: Container(
                            height: 12.h,
                            width: 45.w,
                            decoration: BoxDecoration(color: Colors.transparent,borderRadius: BorderRadius.circular(20)),
                            child: OverflowBox(
                                alignment: Alignment.center,
                                minWidth: 0.0,
                                minHeight: 0.0,
                                maxWidth: imgWidth.w,
                                maxHeight: 100.h,
                                child: Image.asset(
                                  nameImage, 
                                  fit: BoxFit.cover,
                                ),
                              ),
                            
                          ),
                        ),
                       
                        
                     
                        
                      ],
                     ),
   );
          
} 