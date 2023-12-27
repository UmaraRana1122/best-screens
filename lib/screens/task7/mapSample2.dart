import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MapSample2 extends StatefulWidget {
  const MapSample2({super.key});

  @override
  State<MapSample2> createState() => MapSample2State();
}

class MapSample2State extends State<MapSample2> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        
        GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          
          
        ),
            SafeArea(bottom: false,
       child: Column(children: [
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 4.h,
              width: 10.w,
              decoration: BoxDecoration(color: Color(0xff000000),borderRadius: BorderRadius.circular(13)),
              child: Icon(Icons.arrow_back_ios_new,color: Color(0xffFFFFFF),),
            ),
            Container(
              height: 4.h,
              width: 10.w,
              decoration: BoxDecoration(color: Color(0xff000000),borderRadius: BorderRadius.circular(13)),
              child: Image.asset('assets/icons/filter3.png',height: 1.h,),
            ),
        ],),
         ),
       ],),
     ),
     Positioned(
          // bottom: 2.h,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: SingleChildScrollView(
               scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:12.0),
                child: Row(
                  children: [
                    Container(
                       width: 90.w,
                       height: 16.h,
                                decoration: BoxDecoration(color: Colors.white,),
                                child: Row(children: [
                                  Image.asset('assets/images/Rect4.png',height: 20.h,),
                    Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text('The American Bar',style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w500),),
                    ),
                    Text('Every Day\n30% off total bill\n500 Meters',style: TextStyle(color: Colors.black54,fontSize: 16.sp,fontWeight: FontWeight.w500),),
                    
                    
                    
                    ],)
                                ],),
                                
                    ),
                    SizedBox(width: 3.w,),
                     Container(
                       width: 90.w,
                       height: 16.h,
                                decoration: BoxDecoration(color: Colors.white,),
                                child: Row(children: [
                                  Image.asset('assets/images/Rect4.png',height: 20.h,),
                    Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text('The American Bar',style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w500),),
                    ),
                    Text('Every Day\n30% off total bill\n500 Meters',style: TextStyle(color: Colors.black54,fontSize: 16.sp,fontWeight: FontWeight.w500),),
                    
                    
                    
                    ],)
                                ],),
                                
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
     
        
      ],
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}