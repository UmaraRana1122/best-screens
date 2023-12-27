
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyTask71 extends StatelessWidget {
  const MyTask71({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                ),
                child: Container(
                  // margin: EdgeInsets.only(bottom: 1.h),
                  height: 47.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/7.png"),
                          fit: BoxFit.fill)),
                ),
              ),
              Positioned.fill(
                bottom: 0,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 100.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(0)),
                        color: Colors.black.withOpacity(0.7)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18.0, vertical: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 8.w,
                          ),
                          Expanded(
                            // flex: ,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Berlin Nue Club',
                                        style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Spacer(),
                                      Image.asset(
                                        'assets/icons/hh.png',
                                        height: 3.h,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Text(
                                    'Sat - Sun',
                                    style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 16.sp,
                                    ),
                                    maxLines: 1,
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '50% off a la carte',
                                        style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                      Spacer(),
                                      Image.asset(
                                        'assets/icons/uni.png',
                                        height: 2.3.h,
                                      ),
                                      Image.asset(
                                        'assets/icons/uni.png',
                                        height: 2.3.h,
                                      ),
                                      Image.asset(
                                        'assets/icons/uni.png',
                                        height: 2.3.h,
                                      ),
                                      Image.asset(
                                        'assets/icons/uni.png',
                                        height: 2.3.h,
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      Text(
                                        '4 Max',
                                        style: TextStyle(
                                            color: Color(0xffFFFFFF),
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )
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
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: SingleChildScrollView(
              child: Container(
                width: 80.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MO-FR Lunch',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'MO-We Dinner',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400),
                    ),
                        SizedBox(height: 2.h,),
                        Text('A la carte only, not valid in conjunction with menus or other discounted menus', style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400),),
                        SizedBox(height: 2.h,),
                              
                              Text('Reservations and walk-ins welcome Quote “Hospo app: on booking and arrival',style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400),),
                              SizedBox(height: 3.5.h,),
                              Divider(
                           color: Color(0xffD0D0D0), 
                          height: 7, 
                           thickness: 1, 
                       
                        ),
                              SizedBox(height: 2.h,),
            
                              Row(
                                children: [
                                  Image.asset('assets/icons/map.png',height: 2.h,),
                                  SizedBox(width: 1.w,),
                                  Text('Test teste test 25, 10234 Berline',style: TextStyle(fontSize: 15.sp,fontWeight:FontWeight.w400 ,color: Color(0xff000000)),),
                                ],
                              ),
                              SizedBox(height: 2.h,),
            
                                  Divider(
                           color: Color(0xffD0D0D0), 
                           height: 7, 
                           thickness: 1, 
                        ),
                        SizedBox(height: 3.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/call1.png',height: 3.3.h,),
                            SizedBox(width: 5.w,),
                            Image.asset('assets/icons/maill.png',height: 3.3.h,),
                            SizedBox(width: 5.w,),
            
                            Image.asset('assets/icons/instagram.png',height: 3.3.h,),
                            SizedBox(width: 5.w,),
            
                            Image.asset('assets/icons/globe.png',height: 3.3.h,),
            
                          ],
                        ),
                        SizedBox(height: 3.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                height: 5.5.h,
                                // width: 40.w,
                                decoration: BoxDecoration(color: Color(0xff000000),borderRadius: BorderRadius.circular(15)),
                                child: Align(
                                  child: Text('Reservation',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 17.sp,fontWeight: FontWeight.w500),)),
                              ),
                            ),
                            SizedBox(width: 2.5.w,),
                             Expanded(
                               child: Container(
                                height: 5.5.h,
                                // width: 40.w,
                                decoration: BoxDecoration(color: Color(0xff000000),borderRadius: BorderRadius.circular(15)),
                                child: Align(
                                  child: Text('Redeem Offer',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 17.sp,fontWeight: FontWeight.w500),)),
                                                         ),
                             ),
                          ],
                        ),
                        
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
