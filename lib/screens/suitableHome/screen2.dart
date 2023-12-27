import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'new.dart';
class Suitable2 extends StatefulWidget {
  
  const Suitable2({super.key});

  @override
  State<Suitable2> createState() => _Suitable2State();
}



class _Suitable2State extends State<Suitable2> {
   final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

       PageController controller= PageController();

  final images = [
    'assets/images/purple.jpg',
    'assets/images/911.png',
    'assets/images/pics.jpeg'
  ];

  int numberOfPages=3;
  int currentPage=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
        Stack(
          children: [
            Container(
               // margin: EdgeInsets.only(bottom: 1.h),
               height: 40.h,
               width: 100.w,
              child: PageView.builder(
            controller: controller,
            itemCount: numberOfPages,
            itemBuilder: (BuildContext context, int index) {
              return EachPage( images[index]);
            },
      ),
             ),
             Positioned.fill(
              bottom: 8.6.h,
              child: Align(
              alignment: Alignment.bottomRight,
              child: SmoothPageIndicator(  
   controller: controller,  
   count:  3,  
   axisDirection: Axis.horizontal, 
   
  effect:  WormEffect(
    dotWidth: 8.w,
    dotHeight: 1.h,
    radius: 6,
    dotColor: Colors.white.withOpacity(0.4),
    activeDotColor: Colors.white
  ),  
)  
  
             ))
          ],
        ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 100.w,
                height: 67.h,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                    ),
                    color: Color(0xffFFFFFF)),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(23),
                     child: Container(width: 90.w,
                     child: 
                     Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                       Text("\$4,999",style: TextStyle(color: Color(0xff7300be),fontSize: 19.sp,fontWeight: FontWeight.w800),),
                        Image.asset("assets/icons/hd2.png",height: 2.4.h,),
                      ],
                     ),
                     SizedBox(height: 1.h,),
                          Text('Family Home',style: TextStyle(color: Color(0xff000000),fontSize: 19.sp,fontWeight: FontWeight.w700),),
                     SizedBox(height: 1.h,),

                     Row(
                      children: [
                        
                        
                        Icon(Icons.wash_rounded,color: Colors.grey,size: 2.h,),
                        SizedBox(width: 1.w,),
                          Text('2',style: TextStyle(color: Color(0xff000000),fontSize: 16.sp,fontWeight: FontWeight.w500),),
                        SizedBox(width: 3.w,),

                           Icon(Icons.bed,color: Colors.grey,size: 2.h,),
                        SizedBox(width: 1.w,),
                          Text('3',style: TextStyle(color: Color(0xff000000),fontSize: 16.sp,fontWeight: FontWeight.w500),),
                        SizedBox(width: 3.w,),

                           Icon(Icons.car_crash,color: Colors.grey,size: 2.h,),
                        SizedBox(width: 1.w,),
                          Text('3',style: TextStyle(color: Color(0xff000000),fontSize: 16.sp,fontWeight: FontWeight.w500),),
Spacer(),
                          Text('12,000 sq Feet',style: TextStyle(color: Color(0xff000000),fontSize: 15.sp,fontWeight: FontWeight.w500),),

                         
                      ],
                     ),
                     SizedBox(height: 2.h,),

                          Text('Home Loan Calculator',style: TextStyle(color: Color(0xff000000),fontSize: 18.sp,fontWeight: FontWeight.w700),),
                     SizedBox(height: 1.h,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                          Text('\$1,602/ Month',style: TextStyle(color: Colors.grey,fontSize: 17.sp,fontWeight: FontWeight.w700),),
                          CircleAvatar(
                            radius: 1.5.h,
                            backgroundColor: Color(0xff7300be),
                            child: Icon(Icons.question_mark,color: Colors.white,size: 2.h,),
                          )

                ],
               ),
                     SizedBox(height: 2.h,),

                          Text('Your Home Loan',style: TextStyle(color: Colors.black87,fontSize: 17.sp,fontWeight: FontWeight.w700),),
                     SizedBox(height: 2.h,),

                          Text('Apply for conditional approval',style: TextStyle(color: Colors.black87,fontSize: 15.sp,fontWeight: FontWeight.w400),),
                          SizedBox(height: 1.h,),
Container(
  height: 20.h,
  width: 100.w,
  
  child:  ClipRRect(
    borderRadius: BorderRadius.circular(20),

    child: GoogleMap(
              mapType: MapType.terrain,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            
            
          ),
  ),
 
),
SizedBox(height: 1.h,),


                  
                
                     ],)
                     ),
                   ),
                  
               
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10,),
                     child: Row(children: [
  Container(
  height: 6.h,
  width: 45.w,
  decoration: BoxDecoration(color: Color(0xffe3d0f5),borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),topLeft: Radius.circular(30),bottomRight: Radius.circular(30))),
               child:           Align(child: Text('Ask a Question',style: TextStyle(color: Color(0xff833da4),fontSize: 16.sp,fontWeight: FontWeight.w700),)),
  
),
SizedBox(width: 4.w,),
 Container(
  height: 6.h,
  width: 45.w,
  decoration: BoxDecoration(color: Color(0xff833da4),borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),topLeft: Radius.circular(30),bottomRight: Radius.circular(30))),
               child:           Align(child: Text('Express Interest ',style: TextStyle(color: Color(0xffe3d0f5),fontSize: 16.sp,fontWeight: FontWeight.w700),)),
  
),

],),
                   ),
 
               
               
                 ] 
              ),
            
            
         )
         ) ],
         
        )
    );
  }
}