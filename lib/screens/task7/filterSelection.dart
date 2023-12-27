import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class FilterSelection extends StatelessWidget {
  const FilterSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //   bottomNavigationBar: Container(
    //     height: 10.h,
    //     width: 100.w,
    //     decoration: BoxDecoration(color: Color(0xffFFFFFF)),
    //     child: 
    //       Padding(
    //         padding: const EdgeInsets.all(30),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
    //           children: [
    //                 Image.asset("assets/icons/fh.png", height: 2.5.h),
    //                 Image.asset("assets/icons/fh2.png", height: 2.5.h),
    //                 Image.asset("assets/icons/home33.png", height: 2.5.h),
            
            
    //           ],
    //         ),
            
            
    //       ),
           
              
         
    //  ),
     body: SafeArea(child: Padding(
       padding: const EdgeInsets.all(18.0),
       child: SingleChildScrollView(

         child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 2,),
            Image.asset('assets/icons/v.png',height: 3.h,),
              Spacer(),
       
            Image.asset('assets/images/mm.png',height: 2.5.h,),
       
          ],),
          TextField(
            decoration: InputDecoration(
          labelText: "Search",
          labelStyle: TextStyle(color: Color(0xffDDDDDD),fontSize: 18.sp,),
          // hintText: "Search",
          // hintStyle: TextStyle(color: Color(0xffDDDDDD),fontSize: 19.sp,),
          prefixIcon: Icon(Icons.search,size: 3.5.h,color: Color(0xffDDDDDD),),
          suffixIconConstraints: BoxConstraints(),
          suffixIcon: Image.asset('assets/icons/filter.png',height: 4.h,),
            )
          ),
          
         
         
         
        
          SizedBox(height: 1.h,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              
              children: [
                Container(
                width: 100.w,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
height: 22.h,
                      decoration:  BoxDecoration(
                    image:  DecorationImage(
                      image:  AssetImage("assets/images/Monich.png"),
                      fit: BoxFit.fill,
                    )
                  ),

                      
                    ),
                    
                                      
                    
                    SizedBox(
                      height: 2.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 4),
                      child: Column(
                        children: [Row
                        (mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
 Align(alignment: Alignment.topLeft,
                            child: Text(
                              "Monich Resturent",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Image.asset('assets/icons/heart4.png',height: 3.h,),
                        ],),
                         
                          Align(alignment: Alignment.topLeft,
                            child: Text(
                                                                  "Thu-Fri",
                                                                  style: TextStyle(
                              color: Color(0xff7E7E7E),
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w300),
                                                                ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
 Align(alignment: Alignment.topLeft,
                        child: Text(
                          "50% off food & drinks",
                          style: TextStyle(
                              color: Color(0xff7E7E7E),
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      Text(
                          "4 Max",
                          style: TextStyle(
                              color: Color(0xff7E7E7E),
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w300),
                        ),
                          ],)
                     
                        ],
                      ),
                      
                    ),
                    
                  ],
                ),
                ),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              
              children: [
                Container(
                width: 100.w,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
height: 22.h,
                      decoration:  BoxDecoration(
                    image:  DecorationImage(
                      image:  AssetImage("assets/images/white.png"),
                      fit: BoxFit.fill,
                    )
                  ),

                      
                    ),
                    
                                      
                    
                    SizedBox(
                      height: 2.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 4),
                      child: Column(
                        children: [Row
                        (mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
 Align(alignment: Alignment.topLeft,
                            child: Text(
                              "White Castle",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Image.asset('assets/icons/heart4.png',height: 3.h,),
                        ],),
                         
                          Align(alignment: Alignment.topLeft,
                            child: Text(
                                                                  "Thu-Fri",
                                                                  style: TextStyle(
                              color: Color(0xff7E7E7E),
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w300),
                                                                ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
 Align(alignment: Alignment.topLeft,
                        child: Text(
                          "50% off on total bill",
                          style: TextStyle(
                              color: Color(0xff7E7E7E),
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      Text(
                          "4 Max",
                          style: TextStyle(
                              color: Color(0xff7E7E7E),
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w300),
                        ),
                          ],)
                     
                        ],
                      ),
                      
                    ),
                    
                  ],
                ),
                ),
              ],
            ),
          )
         ],),
       ),
     )),
    );
  }
}