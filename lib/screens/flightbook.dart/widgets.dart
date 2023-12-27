import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/screens/flightbook.dart/task2.dart';

Widget containerWidget(
  String text,
  String text2,
  String text3,
  Color color,
  String text4,
  Color color2,
{
   int index=0,

}

){
  return   Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, bottom: 20.0),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                // height: 30.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.4),
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        offset: Offset(0, 1),
                                      ),
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30.0,
                                      bottom: 30.0,
                                      left: 35.0,
                                      right: 35.0),
                                  child: Column(
                                    children: <Widget>[
                                   
                                      Row(
                                        children: [
                                          Text(
                                            text,
                                            style: TextStyle(
                                                color: Color(0xfffd7468),
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Text(
                                            text2,
                                            style: TextStyle(
                                                color: Color(0xfffd7468),
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            "Fr 6 Mar.",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          Text(
                                            "Fr 6 Mar.",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                                                           SizedBox(height: 1.h),
                              
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            "ODS",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Text(
                                            text3,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                                                           SizedBox(height: 1.h),
                              
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            "2:55 pm",
                                            style: TextStyle(
                                                color: Colors.black87),
                                          ),
                                          Text(
                                            "8:20 pm",
                                            style: TextStyle(
                                                color: Colors.black87),
                                          ),
                                        ],
                                      ),
                                                                                                               SizedBox(height: 3.h),
                              
                                   index==0?   Container(
                                        child: Row(
                                          children: <Widget>[
                                            CircleAvatar(
                                              radius: 9,
                                              backgroundColor:
                                                  Color(0xff99a4ab),
                                            ),
                                            Text(" "),
                                            Expanded(child: MySeparator2()),
                                            Text(" "),
                                                
                                            Icon(Icons.flight_takeoff_sharp,
                                                color: Colors.grey),
                                          Expanded(child: MySeparator2()),
                                            Text(" "),
                                            CircleAvatar(
                                              radius: 9,
                                              backgroundColor:
                                                  Color(0xff99a4ab),
                                              child: CircleAvatar(
                                                radius: 7,
                                                backgroundColor: Colors.white,
                                              ),
                                            ),
                                            Text(" "),
                              
                                             Expanded(child: MySeparator2()),
                                            Text(" "),
                                            Icon(Icons.flight_takeoff_sharp,
                                                color: Colors.grey),
                                                  Expanded(child: MySeparator2()),
                                            Text(" "),
                                            CircleAvatar(
                                              radius: 9,
                                              backgroundColor:
                                                  Color(0xff99a4ab),
                                              child: CircleAvatar(
                                                radius: 4,
                                                backgroundColor: Colors.white,
                                              ),
                                            ),
                                            
                                          ],
                                        ),
                                      ):
                                      Container(
                                        child: Row(
                                          children: <Widget>[
                                            CircleAvatar(
                                              radius: 9,
                                              backgroundColor:
                                                  Color(0xff99a4ab),
                                            ),
                                            Text(" "),
                                            Expanded(child: MySeparator()),
                                            Text(" "),
                                                
                                            Icon(Icons.flight_takeoff_sharp,
                                                color: Colors.grey),
                                          Expanded(child: MySeparator()),
                                            Text(" "),
                                                
                                            CircleAvatar(
                                              radius: 9,
                                              backgroundColor:
                                                  Color(0xff99a4ab),
                                              child: CircleAvatar(
                                                radius: 4,
                                                backgroundColor: Colors.white,
                                              ),
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                                                                                                SizedBox(height: 2.h),
                              
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "13h25m",
                                            style: TextStyle(
                                                color: Colors.black38),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                               Positioned(
                                        top: 0,
                                        right: 0,
                                        child: Container(
                                          height: 7.h,
                                          width: 25.w,
                                          decoration: BoxDecoration(
                                            color: color,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(50.0),
                                                topRight:
                                                    Radius.circular(50.0)),
                                          ),
                                          child: Align(child: Text(text4,style: TextStyle(color: color2,fontSize: 18.sp,fontWeight: FontWeight.w500),)),
                                        ),
                                      ),
                            ],
                          ),
                        ),
                      ],
                    );
}