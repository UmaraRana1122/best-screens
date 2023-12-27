import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
              height: 50.h,
              width: 80.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/walk_through.png'))),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 48.h,
              width: 100.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white),
              child: Column(
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    height: 6.8.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff32d7e2),
                    ),
                    child: Center(
                        child: Text(
                      'Sign Up with Email',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 8.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                

                                border: Border.all(
                                  color: Color(0xff444651),
                                )),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                         
                          //Container(
                           // height: 8.h,
                            //width: 40.w,
                            //decoration: BoxDecoration(
                             //   borderRadius: BorderRadius.circular(20),
                                
                               // border: Border.all(
                                 // color: Color(0xff444651),
                                //)),
                          //),
                          
                        ],
                      ),
                       Positioned.fill(
                            child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                          'assets/logo/google_logo.png',
                                          height: 4.h,
                                        ),
                              ],
                            ),
                          ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
