import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyPlan3 extends StatelessWidget {
  const MyPlan3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffefeff),
        body: SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/icons/arr1.png',
                    height: 2.h,
                  ),
                  Text(
                    'The Chinese Pavalion',
                    style: TextStyle(
                        color: Color(0xff222222),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Stack(
                children: [
                  Container(height: 31.h),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      height: 25.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset(
                          "assets/images/china.png",
                          height: 6.8.h,
                          width: 5.h,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    bottom: 0,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: CircleAvatar(
                        radius: 5.4.h,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/lad1.png'),
                            radius: 5.h),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    //  bottom: -1.9.h,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/call.png',
                            height: 2.5.h,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Image.asset(
                            'assets/icons/mail.png',
                            height: 2.5.h,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Image.asset(
                            'assets/icons/share.png',
                            height: 2.5.h,
                          ),
                          Spacer(),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            
                            children: [
                              Container(
                                height: 3.h,
                                width: 25.w,
                                decoration: BoxDecoration(
                                    color: Color(0xff5571FC),
                                    borderRadius: BorderRadius.circular(18)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/icons/user3.png',
                                        height: 1.2.h,
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      Text(
                                        'Follow',
                                        style: TextStyle(
                                            color: Color(0xffFFFFFF),
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 0.1.h,
                              ),
                              Text('@username',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff5571FC))),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 2.6.h,
                    width: 15.w,
                    decoration: BoxDecoration(
                        color: Color(0xffD8DEFF),
                        borderRadius: BorderRadius.circular(12)),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Spicy',
                          style: TextStyle(
                              color: Color(0xff5571FC),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600),
                        )),
                  ),
                  SizedBox(
                    width: 1.5.w,
                  ),
                  Container(
                    height: 2.6.h,
                    width: 22.w,
                    decoration: BoxDecoration(
                        color: Color(0xffD8DEFF),
                        borderRadius: BorderRadius.circular(12)),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Fine Dining',
                          style: TextStyle(
                              color: Color(0xff5571FC),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600),
                        )),
                  ),
                  SizedBox(
                    width: 1.5.w,
                  ),
                  Container(
                    height: 2.6.h,
                    width: 22.w,
                    decoration: BoxDecoration(
                        color: Color(0xffD8DEFF),
                        borderRadius: BorderRadius.circular(12)),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Far Eastern',
                          style: TextStyle(
                              color: Color(0xff5571FC),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    'The Chinese Pavilion is an elegant 50 seat Chinese Restaurant with a reputation for excellent, traditional Mandarin cuisine. Popular with Chinese and Londoners alike, booking is essential. Online bookings at web link, call or message below.',
                    style: TextStyle(
                      color: Color(0xff121212),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                  textAlign: TextAlign.center,
                  'Favourites include Dimsum Soup, Choy Mein and Sweet and Sour Chicken. We deliver through Grub Hub during opening hours. Catering services are available for groups above 24 persons.',
                  style: TextStyle(
                    color: Color(0xff121212),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(
                height: 1.h,
              ),
              Container(
                height: 7.4.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: Color(0xffE6E6E6),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // crossAxisAlignment:
                    //     CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/image1.png',
                        height: 2.h,
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '1223 Forest Road, Shoreditch Building, London.',
                            style: TextStyle(
                                color: Color(0xff030303),
                                fontSize: 13.5.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: .3.h,
                          ),
                          Text('United Kingdom',
                              style: TextStyle(
                                  color: Color(0xff030303),
                                  fontSize: 13.5.sp,
                                  fontWeight: FontWeight.w800))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1.5.h,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Days',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Text(
                      'Time',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 3.5.w,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 4.h,
                    width: 13.w,
                    decoration: BoxDecoration(
                        color: Color(0xffD8DEFF),
                        borderRadius: BorderRadius.circular(15)),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Tue',
                          style: TextStyle(
                              color: Color(0xff5571FC),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                  Spacer(),
                  // SizedBox(width: 2.w,),
                  Container(
                    height: 4.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                        color: Color(0xffD8DEFF),
                        borderRadius: BorderRadius.circular(15)),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '11am - 4pm',
                          style: TextStyle(
                              color: Color(0xff5571FC),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 3.w,
              ),
              Row(
                children: [
                  Container(
                    height: 4.h,
                    width: 13.w,
                    decoration: BoxDecoration(
                        color: Color(0xffD8DEFF),
                        borderRadius: BorderRadius.circular(15)),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Wed',
                          style: TextStyle(
                              color: Color(0xff5571FC),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                  Spacer(),

                  // SizedBox(width: 2.w,),
                  Container(
                    height: 4.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                        color: Color(0xffD8DEFF),
                        borderRadius: BorderRadius.circular(15)),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '11am - 4pm',
                          style: TextStyle(
                              color: Color(0xff5571FC),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 3.w,
              ),
              Row(
                children: [
                  Container(
                    height: 4.h,
                    width: 13.w,
                    decoration: BoxDecoration(
                        color: Color(0xffD8DEFF),
                        borderRadius: BorderRadius.circular(15)),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Thu',
                          style: TextStyle(
                              color: Color(0xff5571FC),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                  Spacer(),

                  // SizedBox(width: 2.w,),
                  Container(
                    height: 4.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                        color: Color(0xffD8DEFF),
                        borderRadius: BorderRadius.circular(15)),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '11am - 4pm',
                          style: TextStyle(
                              color: Color(0xff5571FC),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 3.w,
              ),
              Row(
                children: [
                  Container(
                    height: 4.h,
                    width: 13.w,
                    decoration: BoxDecoration(
                        color: Color(0xffD8DEFF),
                        borderRadius: BorderRadius.circular(15)),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Fri',
                          style: TextStyle(
                              color: Color(0xff5571FC),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                  Spacer(),
                  // SizedBox(width: 2.w,),
                  Container(
                    height: 4.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                        color: Color(0xffD8DEFF),
                        borderRadius: BorderRadius.circular(15)),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '11am - 4pm',
                          style: TextStyle(
                              color: Color(0xff5571FC),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  Text('Closed:',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    width: 1.w,
                  ),
                  Text('Chinese New Year',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300))
                ],
              ),
              Row(
                children: [
                  Text('Website:',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    width: 1.w,
                  ),
                  Text('www.chinesepavalion.com'),
                  Spacer(),
                  Image.asset('assets/icons/fb.png',height: 2.5.h,),
                  SizedBox(width: 1.w,),
                  Image.asset('assets/icons/insta.png',height: 2.5.h,),

                ],
              ),
                  SizedBox(height: .5.h,),

              Align(alignment: Alignment.topLeft,
                child: Text('Images',style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600))),
                  SizedBox(height: .5.h,),

                          Container(
                            height: 30.h,
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                            // Container(),
                                            Expanded(
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(12),
                                                child: Container(
                                                height: 30.h,
                                                  child: Image.asset(
                                                                      "assets/images/1stt.png",
                                                                    
                                                                      fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 1.w),
                                         Column(
                                           // mainAxisAlignment: MainAxisAlignment.center,
                                           mainAxisSize: MainAxisSize.min,
                                           // crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             Expanded(
                                               child: ClipRRect(
                                                 borderRadius: BorderRadius.circular(12),
                                                 child: Container(
                                                   width: 40.w,
                                                 // height: 30.h,
                                                   child: Padding(
                                                     padding: const EdgeInsets.all(2.0),
                                                     child: Image.asset(
                                                                         "assets/images/1stt.png",
                                                                       
                                                                         fit: BoxFit.fill,
                                                     ),
                                                   ),
                                                 ),
                                               ),
                                             ),
                                             // SizedBox(height: 1.h),
                                               Expanded(
                                                 child: ClipRRect(
                                                 borderRadius: BorderRadius.circular(12),
                                                 child: Container(
                                                   width: 40.w,
                                                 // height: 30.h,
                                                   child: Padding(
                                                     padding: const EdgeInsets.all(2.0),
                                                     child: Image.asset(
                                                                         "assets/images/3rd.png",
                                                                       
                                                                         fit: BoxFit.fill,
                                                     ),
                                                   ),
                                                 ),
                                                                                                 ),
                                               ),
                                           ],
                                         ),
                                            SizedBox(width: 1.w),

                                            Expanded(
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(12),
                                                child: Container(
                                                height: 30.h,
                                                  child: Image.asset(
                                                                      "assets/images/4th.png",
                                                                    
                                                                      fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                            ),
                           
                               ],
                               
                            ),
                          ),
                          SizedBox(height: 2.h,),
                          Align(alignment: Alignment.topLeft,
                child: Text('Recent Posts',style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600))),
                          SizedBox(height: 2.h,),
                  SizedBox(height: .5.h,),
                  Container(
                    // height: 42.5.h,
                    width: 100.w,
                    decoration: BoxDecoration(color: Color(0xffF8F8F8),borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                              radius: 2.h,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/circle.png'),
                                  radius: 1.9.h),
                            ),
                            SizedBox(width: 2.w,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                // mainAxisSize: MainAxisSize.min,
                                //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Casa Tequila Restaurant',style: TextStyle(color: Color(0xff3C3939),fontSize: 15.sp,fontWeight: FontWeight.w600),),
                                  SizedBox(width: 10.w,),
                              Text('24 nov',style: TextStyle(fontSize:13.5.sp,fontWeight: FontWeight.w400,decoration: TextDecoration.underline,),),
                              SizedBox(width: .5.w,),
                              Text('03:32',style: TextStyle(fontSize:13.5.sp,fontWeight: FontWeight.w400,decoration: TextDecoration.underline,),),
                                ],
                              
                              ),
                              
                              
                            
                            ),
                            ],
                          ),
                          SizedBox(height:1.h),
                          Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                                      text: TextSpan(
                                    text: "We’re open for bookings for christmas eve, 24th december. Set menu includes turkey, ham and pudding. From \$250 per head. Menu at ",
                                    style: TextStyle(
                                        color: Color(0xff121212),
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400),
                                    children: [
                                      TextSpan(
                                          text:
                                              "weblink.",
                                          style: TextStyle( decoration: TextDecoration.underline,
                                              color: Color(0xff121212),
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500,),
                                              children: [
                                                TextSpan(
                                          text:
                                              "DM now or call after 6pm. #christmax",
                                          style: TextStyle(
                                              color: Color(0xff121212),
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w400),)
                                              ]
                                              )
                                    ],
                                  )),
                  
                ],
              ),
              SizedBox(height: 1.h,),
              Container(
                height: 20.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset(
                          "assets/images/food.png",
                          height: 6.8.h,
                          width: 5.h,
                          fit: BoxFit.fill,
                        ),
                      ),
              ),
              Container(
                height: 6.h,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:8.0,left: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        
                        children: [
                          Image.asset('assets/icons/1pic.png',height: 2.5.h,),
SizedBox(width: 5.w,),
                          
                          Image.asset('assets/icons/2pic.png',height: 2.5.h,),
SizedBox(width: 5.w,),


Image.asset('assets/icons/3pic.png',height: 2.5.h,),
SizedBox(width: 5.w,),


Image.asset('assets/icons/4pic.png',height: 2.5.h,),
SizedBox(width: 5.w,),

    Image.asset('assets/icons/5pic.png',height: 2.5.h,),
    Spacer(),
    Image.asset('assets/icons/6pic.png',height: 2.5.h,),

                        ],
                      ),
                    ),
               
               Positioned(
                
                 child: Align(
                  alignment: Alignment.bottomLeft,
                   child: Container(
                    // height: 2.h,
                    width: 55.w,
                    // color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:14.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('12',style: TextStyle(
                                        color: Colors.transparent,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600)),
                                        Text('12',style: TextStyle(
                                        color: Colors.transparent,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600)),Text('12',style: TextStyle(
                                        color: Color(0xff5571FC),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600)),Text('433',style: TextStyle(
                                        color: Color(0xff5571FC),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600)),Text('12',style: TextStyle(
                                        color: Colors.transparent,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600)),
                        ],
                      ),
                    )),
                 ),
               ),
                  ],
                ),
              ),
                        ],
                        
                      ),
                      
                      
                      
                    ),
                    
                    
                    
                  ),
                  SizedBox(height: 4.h,),
                  Container(
                    height: 42.5.h,
                    width: 100.w,
                    decoration: BoxDecoration(color: Color(0xffF8F8F8),borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                              radius: 2.h,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/10pic.png'),
                                  radius: 1.9.h),
                            ),
                            SizedBox(width: 2.w,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                // mainAxisSize: MainAxisSize.min,
                                //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('The Palace Nightclub',style: TextStyle(color: Color(0xff3C3939),fontSize: 15.sp,fontWeight: FontWeight.w600),),
                                  SizedBox(width: 10.w,),
                              Text('24 nov',style: TextStyle(fontSize:13.5.sp,fontWeight: FontWeight.w400,decoration: TextDecoration.underline,),),
                              SizedBox(width: .5.w,),
                              Text('03:32',style: TextStyle(fontSize:13.5.sp,fontWeight: FontWeight.w400,decoration: TextDecoration.underline,),),
                                ],
                              
                              ),
                              
                              
                            
                            ),
                            ],
                          ),
                          SizedBox(height:1.h),
                          Column(
                children: [
                  
                  RichText(
                    textAlign: TextAlign.center,
                                      text: TextSpan(
                                    text: "Ra welcomes chef itsuko suzuki to our team. Still some tables free this weekend, if you book soon, sushi, bowls, saki. Browse the menu at  ",
                                    style: TextStyle(
                                        color: Color(0xff121212),
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400),
                                    children: [
                                      TextSpan(
                                          text:
                                              "weblink.",
                                          style: TextStyle(
                                              color: Color(0xff121212),
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w700),
                                              children: [
                                                TextSpan(
                                          text:
                                              "Message or call to book a table.",
                                          style: TextStyle(
                                              color: Color(0xff121212),
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w400),)
                                              ]
                                              )
                                    ],
                                  )),
                  
                ],
              ),
              SizedBox(height: 1.h,),
              Container(
                height: 20.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset(
                          "assets/images/11pic.png",
                          height: 6.8.h,
                          width: 5.h,
                          fit: BoxFit.fill,
                        ),
                      ),
              ),
              Container(
                height: 6.h,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:8.0,left: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        
                        children: [
                          Image.asset('assets/icons/1pic.png',height: 2.5.h,),
SizedBox(width: 5.w,),
                          
                          Image.asset('assets/icons/2pic.png',height: 2.5.h,),
SizedBox(width: 5.w,),


Image.asset('assets/icons/3pic.png',height: 2.5.h,),
SizedBox(width: 5.w,),


Image.asset('assets/icons/4pic.png',height: 2.5.h,),
SizedBox(width: 5.w,),

    Image.asset('assets/icons/5pic.png',height: 2.5.h,),
    Spacer(),
    Image.asset('assets/icons/6pic.png',height: 2.5.h,),

                        ],
                      ),
                    ),
               
               Positioned(
                
                 child: Align(
                  alignment: Alignment.bottomLeft,
                   child: Container(
                    // height: 2.h,
                    width: 55.w,
                    // color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:14.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('12',style: TextStyle(
                                        color: Colors.transparent,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600)),
                                        Text('12',style: TextStyle(
                                        color: Colors.transparent,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600)),Text('12',style: TextStyle(
                                        color: Color(0xff5571FC),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600)),Text('433',style: TextStyle(
                                        color: Color(0xff5571FC),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600)),Text('12',style: TextStyle(
                                        color: Colors.transparent,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600)),
                        ],
                      ),
                    )),
                 ),
               ),
                  ],
                ),
              ),

                        ],
                        
                      ),
                      
                      
                      
                    ),
                    
                    
                    
                  ),
            ],
          ),
        ),
      ),
    ));
  }
}
