import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MySecond extends StatefulWidget {
  const MySecond({super.key});
  @override
  State<MySecond> createState() => _MySecondState();
}

class _MySecondState extends State<MySecond> {
  int status =0; // 0 pending, 1 diamond  2 verified
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff0b0b0c),
      bottomNavigationBar: Container(
        height: 10.h,
        width: 100.w,
        decoration: BoxDecoration(color: Color(0xff2b2f3a)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/s1.png", height: 2.5.h),
                  SizedBox(height: 1.3.h),
                  Text(
                    "Search",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/h1.png", height: 2.5.h),
                  SizedBox(height: 1.3.h),
                  Text(
                    "Interests",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/see.png", height: 2.5.h),
                  SizedBox(height: 1.3.h),
                  Text(
                    "Seeking",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/msg.png", height: 2.5.h),
                  SizedBox(height: 1.3.h),
                  Text(
                    "Messages",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/m1.png", height: 2.5.h),
                  SizedBox(height: 1.3.h),
                  Text(
                    "More",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 1.h),
              height: 40.h,
              width: 100.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/shade.png"),
                      fit: BoxFit.fill)),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'New Search',
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Image.asset("assets/icons/Vector.png", height: 2.h),
                        SizedBox(
                          width: 5.w,
                        ),
                        Image.asset("assets/icons/Vector-2.png", height: 2.h),
                        SizedBox(
                          width: 5.w,
                        ),
                        Image.asset("assets/icons/filter 1.png", height: 2.h),
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          height: 0.2.h,
                          color: Color(0xff98AAC6),
                        ),
                        TabBar(
                            labelPadding: EdgeInsets.zero,
                            tabs: [
                              Tab(
                                text: "Nearest",
                              ),
                              Tab(
                                text: "Recently Active",
                              ),
                              Tab(
                                text: "Newest",
                              ),
                            ],
                            indicatorColor: Colors.blue,
                            labelStyle: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.bold),
                            unselectedLabelStyle: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w300),
                            labelColor: Color(0xff5276D4),
                            unselectedLabelColor: Color(0xff98AAC6)),
                      ],
                    ),
                    SizedBox(height: 3.h),
                    Expanded(
                      child: TabBarView(children:
                       [1,2,3].map(  (e) => 
                        GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          // childAspectRatio: 049,
                          shrinkWrap: false,
                          children: List.generate(
                            5,
                            (index) {
                              return Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Container(
                                  height: Get.height,
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color:status==0?Colors.white: Colors.yellow, width: 3),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Stack(
                                    children: [
                                      Container(
                                          height: Get.height,
                                          width: Get.width,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/lad1.png"),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          )),
                                       
                                      Positioned.fill(
                                        bottom: 0,
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(20),
                                      
                                                bottomRight:
                                                    Radius.circular(20)),
                                            child: Container(
                                              
                                              width: Get.width,
                                              decoration: BoxDecoration(
                                                  color: Colors.black
                                                      .withOpacity(0.8)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      'assets/icons/d1.png',
                                                      height: 2.h,
                                                    ),
                                                    SizedBox(
                                                      width: 1.w,
                                                    ),
                                                    Expanded(
                                                      flex: 2,
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(bottom:8.0),
                                                        child: Column(
                                                          mainAxisSize: MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'cutecatp52',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff4F6ECF),
                                                                  fontSize:
                                                                      15.sp),
                                                            ),
                                                            SizedBox(
                                                              height: 1.h,
                                                            ),
                                                            Text(
                                                              '29 - NewYork, USA',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xff4F6ECF),
                                                                fontSize: 13.sp,
                                                              ),
                                                              maxLines: 1,
                                                            ),
                                                           
                                                          ],
                                                        ),
                                                        
                                                      ),
                                                      
                                                    ),
                                                  Expanded(
                                                    
                                                    child: Column(
                                                      mainAxisSize: MainAxisSize.min,
                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                  
                                                      children: [
                                                        CircleAvatar(backgroundColor: Colors.grey,
                                                        radius: 0.6.h,),
                                                        SizedBox(height: 1.h,),
                                                        Container(
                                                          decoration: BoxDecoration(color: Colors.black,borderRadius: 
                                                          BorderRadius.circular(7)
                                                          ),
                                                          child: Padding(
                                                            padding: const EdgeInsets.all(8.0),
                                                            child: Row(
                                                              mainAxisSize: MainAxisSize.min,
                                                              children: [
                                                                Text('4',style: TextStyle(color: Colors.white,fontSize: 12.sp,),),
                                                                SizedBox(width: 1.w,),
                                                                Image.asset('assets/icons/cam2.png',height: 1.6.h,)
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        
                                                      ],

                                                    ),
                                                  ),
                                      
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Align
                                        (alignment: Alignment.topRight,
                                          child: InkWell(
                                            onTap: (){
                                              setState(() {
                                                index=1;
                                              });
                                            },
                                            child: Image.asset('assets/icons/h2.png',height: 3.h,))),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ).toList(),
                        // Container(
                        // child: Align(
                        //   alignment: Alignment.bottomCenter,
                        //   child: ClipRRect(
                        //     borderRadius: BorderRadius.only(
                        //         bottomLeft: Radius.circular(20),
                        //         bottomRight: Radius.circular(20)),
                        //     child: Blur(
                        //       // blur: 2,
                        //       blurColor:
                        //           Colors.black.withOpacity(0.2),
                        //       child: Container(
                        //         height: 5.h,
                        //         width: 100.w,
                        //         color: Colors.transparent,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        //   ),

                      )
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
