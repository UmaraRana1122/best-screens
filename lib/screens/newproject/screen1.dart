import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: 100.h,
              width: 100.w,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff270251),
                    Color(0xff0d022b),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: SafeArea(
                child: Column(
                  children: [
                    CircleAvatar(
                            radius: 2.h,
                            backgroundColor: Color(0xff4f3a85),
                    child: Image.asset('assets/icons/one1.png',color: Color(0xffFFFFFF),height: 1.7.h,),
                            
                          ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Align(alignment: Alignment.center,
                     child: Container(
                                   height: 30.h,
                                      width: 65.w,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xff4e3370), width: 20),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/icons/qrr.png"),
                                                  fit: BoxFit.cover,
                                                ),
                                          borderRadius: BorderRadius.circular(25),
                                          
                                          ),
                                 ),
                   ),
                   SizedBox(height: 2.h,),
                   Text('Booking Confirmed',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 20.sp,fontWeight: FontWeight.w700),),
                   SizedBox(height: 1.h,),

                   Text('Venue and Booking Details',style: TextStyle(color: Color(0xffc7bfcf),fontSize: 16.sp,fontWeight: FontWeight.w600),),
                   SizedBox(height: 1.h,),

                   Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venenatis eget lobortis amet amet mi sagittis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venenatis eget lobortis amet amet mi sagittis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venenatis eget lobortis amet amet mi sagittis.Lorem ipsum dolor sit amet, consectetur.',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16.sp,fontWeight: FontWeight.w300),),
                   SizedBox(height: 3.h,),

Container(
  height: 7.h,
  width: 100.w,
  decoration: BoxDecoration(color: Color(0xff6b29b5),borderRadius: BorderRadius.circular(30)),
child: Align(alignment: Alignment.center,
  child: Text('Share',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 17.sp,fontWeight: FontWeight.w500),)),
),

                ]
              ),
            ),
    
        ],
      )
    );
  }
}