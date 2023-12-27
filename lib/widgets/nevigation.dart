import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget customContainer(
  String newImage,
  String newtext,
  String text1,
  String text2,
) {
  return Container(
                height: 24.5.h,
                width: 90.w,
                decoration: BoxDecoration(color: Color(0xfff8f8f9),borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:12.0,vertical: 10),
                    child: Container(
                      height: 17.h,
                      child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Expanded(
                     child: Container(
                            height: 18.h,
                                  // width: 40.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.transparent,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Image.asset(
                                      newImage,
                                      height: 6.8.h,
                                      width: 5.h,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                          ),
                          
                   ),
                   SizedBox(width: 2.w,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          Text(newtext,style: TextStyle(color: Color(0xff000000),fontSize: 17.sp,fontWeight: FontWeight.w600),),
                          Spacer(),
                          // SizedBox(height: 6.h),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                                  height: 3.h,
                                  width: 20.w,
                                  decoration: BoxDecoration(color: Color(0xffFF4539),borderRadius: BorderRadius.circular(9)),
                                  child: Align(child: Text('50% off',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16.sp,fontWeight: FontWeight.w600),)),
                                ),
                          ),
                        
                          ],),
                        ),
                        SizedBox(width: 3.w,),
                      ],),
                    ),
              
                  ),
                  SizedBox(height: .8.h,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                Image.asset('assets/icons/gebu6.png',height: 2.5.h,),
                    SizedBox(width: 2.w,),
                    
                Text('432',style: TextStyle(color: Color(0xffFF4539),fontWeight: FontWeight.w500,fontSize: 16.sp),),
                    SizedBox(width: 7.w,),
                    
                Image.asset('assets/icons/gebu7.png',height: 2.5.h,),
                    SizedBox(width: 2.w,),
                    
                Text('21',style: TextStyle(color: Color(0xff797979),fontWeight: FontWeight.w600,fontSize: 16.sp),),
                    Spacer(),
                Text(text1,style: TextStyle(color: Color(0xffBBBBBB),fontWeight: FontWeight.w500,fontSize: 19.sp,decoration: TextDecoration.lineThrough),),
                    SizedBox(width: 2.w,),
                    
                Text(text2,style: TextStyle(color: Color(0xff01B3E3),fontWeight: FontWeight.w500,fontSize: 21.sp),),
                    
                    
                    
                      
                    ],),
                  )
                ],),
              );
  
}
