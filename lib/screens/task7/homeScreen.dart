import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/screens/task7/home1.dart';
class MyHomeScreen7 extends StatelessWidget {
  const MyHomeScreen7({super.key});

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
     body: SafeArea(
      bottom: false,
      child: Padding(
       padding: const EdgeInsets.all(18.0),
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
        SizedBox(height:4.h),
        
     
        Expanded(child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
          Text('Explore',style: TextStyle(color: Color(0xff000000),fontSize: 17.sp,fontWeight: FontWeight.w700),),
          Spacer(),
          Text('Show all',style: TextStyle(color: Color(0xff000000),fontSize: 15.sp,fontWeight: FontWeight.w300),),
          SizedBox(width: 1.5.w,),

          Icon(Icons.arrow_forward_ios_sharp,size: 15.sp,)
       
          
       
        ],),
        SizedBox(height: 1.h,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
            
            child: Row(
              children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ClipRRect(
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                                child: InkWell(
                                  onTap: (){
                                    Get.to(MyTask71());
                                  },
                                  child: Container(
                                    width: 55.w,
                                    decoration: BoxDecoration(
                                      color: Color(0xffFFFFFF),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)
                                          ),
                                          child: Container(
                                            decoration:  BoxDecoration(
                                            image:  DecorationImage(
                                                image:  AssetImage("assets/images/7.png"),
                                                fit: BoxFit.fill,
                                            )
                                          ),
                                            height: 20.h,
                                       
                                            
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2.h,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12.0, vertical: 4),
                                          child: Column(
                                            children: [
                                              Align(alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Jose & Rides",
                                                  style: TextStyle(
                                                      color: Color(0xff000000),
                                                      fontSize: 17.sp,
                                                      fontWeight: FontWeight.w600),
                                                ),
                                              ),
                                              Align(alignment: Alignment.topLeft,
                                                child: Text(
                                                                                      "Sat-Sun",
                                                                                      style: TextStyle(
                                                  color: Color(0xff7E7E7E),
                                                  fontSize: 17.sp,
                                                  fontWeight: FontWeight.w300),
                                                                                    ),
                                              ),
                                          Align(alignment: Alignment.topLeft,
                                            child: Text(
                                              "50% off whole bill",
                                              style: TextStyle(
                                                  color: Color(0xff7E7E7E),
                                                  fontSize: 17.sp,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                            ],
                                          ),
                                          
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
          ),
               
          SizedBox(width: 1.5.w,),
          ClipRRect(
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                                child: Container(
                                  width: 55.w,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFFFFF),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)
                                        ),
                                        child: Container(
                                          decoration:  BoxDecoration(
            image:  DecorationImage(
                image:  AssetImage("assets/images/pics3.png"),
                fit: BoxFit.fill,
            )
          ),
                                          height: 20.h,
               
                                          
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12.0, vertical: 4),
                                        child: Column(
                                          children: [
                                            Align(alignment: Alignment.topLeft,
                                              child: Text(
                                                "Jose & Rides",
                                                style: TextStyle(
                                                    color: Color(0xff000000),
                                                    fontSize: 17.sp,
                                                    fontWeight: FontWeight.w600),
                                              ),
                                            ),
                                            Align(alignment: Alignment.topLeft,
                                              child: Text(
                                                                                    "Mon-Fri",
                                                                                    style: TextStyle(
                                                color: Color(0xff7E7E7E),
                                                fontSize: 17.sp,
                                                fontWeight: FontWeight.w300),
                                                                                  ),
                                            ),
                                        Align(alignment: Alignment.topLeft,
                                          child: Text(
                                            "40% off on each deal",
                                            style: TextStyle(
                                                color: Color(0xff7E7E7E),
                                                fontSize: 17.sp,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                          ],
                                        ),
                                        
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
          SizedBox(width: 1.5.w,),
               
                              ClipRRect(
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                                child: Container(
                                  width: 55.w,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFFFFF),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)
                                        ),
                                        child: Container(
                                          decoration:  BoxDecoration(
            image:  DecorationImage(
                image:  AssetImage("assets/images/pics.jpeg"),
                fit: BoxFit.fill,
            )
          ),
                                          height: 20.h,
               
                                          
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12.0, vertical: 4),
                                        child: Column(
                                          children: [
                                            Align(alignment: Alignment.topLeft,
                                              child: Text(
                                                "Jose & Rides",
                                                style: TextStyle(
                                                    color: Color(0xff000000),
                                                    fontSize: 17.sp,
                                                    fontWeight: FontWeight.w600),
                                              ),
                                            ),
                                            Align(alignment: Alignment.topLeft,
                                              child: Text(
                                                                                    "Mon-Fri",
                                                                                    style: TextStyle(
                                                color: Color(0xff7E7E7E),
                                                fontSize: 17.sp,
                                                fontWeight: FontWeight.w300),
                                                                                  ),
                                            ),
                                        Align(alignment: Alignment.topLeft,
                                          child: Text(
                                            "30% off whole bill",
                                            style: TextStyle(
                                                color: Color(0xff7E7E7E),
                                                fontSize: 17.sp,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                          ],
                                        ),
                                        
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
            ],),
            
          ),
          SizedBox(height:4.h),
          Row(children: [
            Text('Last Seen',style: TextStyle(color: Color(0xff000000),fontSize: 17.sp,fontWeight: FontWeight.w700),),
            Spacer(),
            Text('Show all',style: TextStyle(color: Color(0xff000000),fontSize: 15.sp,fontWeight: FontWeight.w300),),
            SizedBox(width: 1.5.w,),
        
            Icon(Icons.arrow_forward_ios_sharp,size: 15.sp,),
               
            
               
          ],),
          SizedBox(height: 1.5.h,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                ClipRRect(
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                                    child: Container(
                                      width: 70.w,
                                      decoration: BoxDecoration(
                                        color: Color(0xffFFFFFF),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)
                                            ),
                                            child: Container(
                                              decoration:  BoxDecoration(
                image:  DecorationImage(
                    image:  AssetImage("assets/images/pics5.png"),
                    fit: BoxFit.fill,
                )
              ),
                                              height: 20.h,
          
                                              
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
                                                    "Medlin High Tea",
                                                    style: TextStyle(
                                                        color: Color(0xff000000),
                                                        fontSize: 17.sp,
                                                        fontWeight: FontWeight.w600),
                                                  ),
                                                ),
                                                Image.asset('assets/icons/heart4.png',height: 3.h,),
                                              ],),
                                               
                                                Align(alignment: Alignment.topLeft,
                                                  child: Text(
                                                                                        "Tue-Wed",
                                                                                        style: TextStyle(
                                                    color: Color(0xff7E7E7E),
                                                    fontSize: 17.sp,
                                                    fontWeight: FontWeight.w300),
                                                                                      ),
                                                ),
                                            Align(alignment: Alignment.topLeft,
                                              child: Text(
                                                "60% off food",
                                                style: TextStyle(
                                                    color: Color(0xff7E7E7E),
                                                    fontSize: 17.sp,
                                                    fontWeight: FontWeight.w300),
                                              ),
                                            ),
                                              ],
                                            ),
                                            
                                          ),
                                          
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 3.w,),
                                   ClipRRect(
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                                    child: Container(
                                      width: 70.w,
                                      decoration: BoxDecoration(
                                        color: Color(0xffFFFFFF),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)
                                            ),
                                            child: Container(
                                              decoration:  BoxDecoration(
                image:  DecorationImage(
                    image:  AssetImage("assets/images/pics5.png"),
                    fit: BoxFit.fill,
                )
              ),
                                              height: 20.h,
          
                                              
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
                                                    "Medlin High Tea",
                                                    style: TextStyle(
                                                        color: Color(0xff000000),
                                                        fontSize: 17.sp,
                                                        fontWeight: FontWeight.w600),
                                                  ),
                                                ),
                                                Image.asset('assets/icons/heart4.png',height: 3.h,),
                                              ],),
                                               
                                                Align(alignment: Alignment.topLeft,
                                                  child: Text(
                                                                                        "Tue-Wed",
                                                                                        style: TextStyle(
                                                    color: Color(0xff7E7E7E),
                                                    fontSize: 17.sp,
                                                    fontWeight: FontWeight.w300),
                                                                                      ),
                                                ),
                                            Align(alignment: Alignment.topLeft,
                                              child: Text(
                                                "60% off food",
                                                style: TextStyle(
                                                    color: Color(0xff7E7E7E),
                                                    fontSize: 17.sp,
                                                    fontWeight: FontWeight.w300),
                                              ),
                                            ),
                                              ],
                                            ),
                                            
                                          ),
                                          
                                        ],
                                      ),
                                    ),
                                  ),
              ],),
            ),
          ),
          SizedBox(height:4.h),
          Row(children: [
            Text('Favourites',style: TextStyle(color: Color(0xff000000),fontSize: 17.sp,fontWeight: FontWeight.w700),),
            Spacer(),
            Text('Show all',style: TextStyle(color: Color(0xff000000),fontSize: 15.sp,fontWeight: FontWeight.w300),),
            SizedBox(width: 1.5.w,),
            Icon(Icons.arrow_forward_ios_sharp,size: 15.sp,),
               
            
               
          ],),
          SizedBox(height: 1.h,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
          ClipRRect(
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                                      child: Container(
                                        width: 80.w,
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)
                                              ),
                                              child: Container(
                                                decoration:  BoxDecoration(
                  image:  DecorationImage(
                      image:  AssetImage("assets/images/pics2.jpeg"),
                      fit: BoxFit.fill,
                  )
                ),
                                                height: 20.h,
          
                                                
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
                                                      "Medlin High Tea",
                                                      style: TextStyle(
                                                          color: Color(0xff000000),
                                                          fontSize: 17.sp,
                                                          fontWeight: FontWeight.w600),
                                                    ),
                                                  ),
                                                  Image.asset('assets/icons/heart4.png',height: 3.h,),
                                                ],),
                                                 
                                                  Align(alignment: Alignment.topLeft,
                                                    child: Text(
                                                                                          "Tue-Wed",
                                                                                          style: TextStyle(
                                                      color: Color(0xff7E7E7E),
                                                      fontSize: 17.sp,
                                                      fontWeight: FontWeight.w300),
                                                                                        ),
                                                  ),
                                              Align(alignment: Alignment.topLeft,
                                                child: Text(
                                                  "60% off food",
                                                  style: TextStyle(
                                                      color: Color(0xff7E7E7E),
                                                      fontSize: 17.sp,
                                                      fontWeight: FontWeight.w300),
                                                ),
                                              ),
                                                ],
                                              ),
                                              
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(width:1.5.w),
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                                      child: Container(
                                        width: 80.w,
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)
                                              ),
                                              child: Container(
                                                decoration:  BoxDecoration(
                  image:  DecorationImage(
                      image:  AssetImage("assets/images/pics2.jpeg"),
                      fit: BoxFit.fill,
                  )
                ),
                                                height: 20.h,
          
                                                
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
                                                      "Medlin High Tea",
                                                      style: TextStyle(
                                                          color: Color(0xff000000),
                                                          fontSize: 17.sp,
                                                          fontWeight: FontWeight.w600),
                                                    ),
                                                  ),
                                                  Image.asset('assets/icons/heart4.png',height: 3.h,),
                                                ],),
                                                 
                                                  Align(alignment: Alignment.topLeft,
                                                    child: Text(
                                                                                          "Tue-Wed",
                                                                                          style: TextStyle(
                                                      color: Color(0xff7E7E7E),
                                                      fontSize: 17.sp,
                                                      fontWeight: FontWeight.w300),
                                                                                        ),
                                                  ),
                                              Align(alignment: Alignment.topLeft,
                                                child: Text(
                                                  "60% off food",
                                                  style: TextStyle(
                                                      color: Color(0xff7E7E7E),
                                                      fontSize: 17.sp,
                                                      fontWeight: FontWeight.w300),
                                                ),
                                              ),
                                                ],
                                              ),
                                              
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                    ),
              ],),
            ),
          )
             
            ],
          ),
        ))
      ],),
     )),
    );
  }
}