
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class Ariana2 extends StatefulWidget {
  const Ariana2({super.key});

  @override
  State<Ariana2> createState() => _Ariana2State();
}

class _Ariana2State extends State<Ariana2> {
  double _currentSliderValue = 20;
  int cureent = 0;
  int cureent1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffefeff),
      body: Column(children: [
        Stack(children: [
          Column(
            children: [
              
              Container(
                height: 100.h,
                
                decoration: BoxDecoration(gradient: LinearGradient(
                  tileMode: TileMode.clamp,
                  begin: Alignment.topLeft,
                end: Alignment.topRight,
                  colors: [
Color(0xff242f55),
                  Color(0xff69769a),
                  Color(0xff242f55),

                ])),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
          SizedBox(height: 4.h,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_back,color: Colors.white,),
                          Text("Artist",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                        Icon(Icons.info_outline,color: Colors.white,size: 3.h,)

                      ],),
                    ),
                    SizedBox(height: 11.h,),
                      Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 100.w,
                height: 82.h,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Column(
                    children: [
                      ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 25.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                                            
                      ),
                      
                        child: Image.asset(
                          "assets/images/ab4.jpeg",
                          height: 6.8.h,
                          width: 5.h,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                   Slider(
        value: _currentSliderValue,
        max: 100,
        divisions: 5,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
      ),
                     
                     
                      SizedBox(height: 7.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                              
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
                  
                     
                      
                      
                ],),
              ),
              
            ],
          )
          
        ],)
      ],),
    );
  }
}
