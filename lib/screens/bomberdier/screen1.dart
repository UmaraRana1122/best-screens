import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class Bomber extends StatefulWidget {
  const Bomber({super.key});

  @override
  State<Bomber> createState() => _BomberState();
}

class _BomberState extends State<Bomber> {
   double degrees2Radians = pi / 180.0;
 double radians2Degrees = 180.0 / pi;

double degrees(double radians) => radians * radians2Degrees;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
    decoration:  BoxDecoration(gradient: LinearGradient(begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [

                Color(0xfff16577),
                                Color(0xfff46672),
                                Color(0xffde5fa7),
Color(0xffd05bc8),



              ],)),
              child: SafeArea(
                child: Column(children: [
                    SizedBox(height: 9.h,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Your Player",style: TextStyle(color: Colors.white,fontSize: 22.sp,fontWeight: FontWeight.w700),),
                      Icon(Icons.menu_sharp,color: Colors.white,size: 4.h,),
                    ],),
                  ),
                  SizedBox(height: 5.h,),
                  Stack(children: [
                     Transform.translate(
      offset: Offset(-10, 0),
      child: Transform(
        alignment: FractionalOffset.center,
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.01)
          ..rotateY(-3.1),
        child: Container(
          height: 220,
          margin: EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(22)),
          ),
        ),
      ),
    ),
    Transform.translate(
      offset: Offset(-33, 0),
      child: Transform(
        alignment: FractionalOffset.center,
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.01)
          ..rotateY(-3.0),
        child: Container(
          height: 188,
          margin: EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
            color: Color(0xfffd9cbb),
            borderRadius: BorderRadius.all(Radius.circular(22)),
          ),
        ),
      ),
    )
                  ],)
                ],),
              ),
       
      ),
    );
  }
}