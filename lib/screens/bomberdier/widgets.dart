import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
Widget courseContainer(){
  return  Container(
                    height: 27.h,
                    width: 80.w,
                    decoration: BoxDecoration(color: Color(0xfff4507f),borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                        Container(
                           height: 5.h,
                      width: 20.w,
                      decoration: BoxDecoration(color: Color(0xffFFFFFF),borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Icon(Icons.star,color: Color(0xffd4514f),size: 3.h,),
                        SizedBox(width: 1.w,),
                  Text("4.5",style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),

                      ],),
                        ),
                        SizedBox(height: 2.h,),
                  Text("UI/UX Design",style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w600),),
                        SizedBox(height: 2.h,),

                  Row(children: [
                Column(children: [
                  CircleAvatar(
                    radius: 3.h,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(radius: 2.8.h,
                    backgroundImage: AssetImage("assets/images/anna.png",),),
                  ),

        
                ],),
                SizedBox(width: 3.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Teacher",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w300),),
                  SizedBox(height: .5.h,),
                  Text("Gustavo Kunter",style: TextStyle(color: Colors.white,fontSize: 17.sp,fontWeight: FontWeight.w600),),

                ],)
               ],),

                      ],),
                    ),
                  );
}
Widget forYou(){
  return  Stack(children: [
                 
                 Container(
                  height: 23.5.h,
                           width: 44.w,

                     decoration: BoxDecoration(
                       color: Color(0xfff8bbcf),
                       borderRadius: BorderRadius.circular(40),
                       boxShadow: [
                         BoxShadow(color: Colors.black.withOpacity(0.23),spreadRadius: 3,blurRadius: 10,offset: Offset(1,1))
                       ]
                     ),
                     child: Column(
                       children: [
                        SizedBox(height: 1.h,),
                         Container(
                         height: 7.h,
                           width: 45.w,

                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 CircleAvatar(
                      radius: 2.h,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(radius: 2.3.h,
                      backgroundImage: AssetImage("assets/images/anna.png",),),
                    ),
                                 SizedBox(width: 2.w,),
                                 Flexible(child: Text("Youvene \nSandoval",style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600,color: Color(0xffbf8c9d)),))
                               ],
                             ),
                           ),
                         ),
                  
                       ],
                     ),),
                        Positioned.fill(
                  
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 16.h,
                             width: 44.w,
                          
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(40)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                           
                                           
                                           
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Icon(
                            Icons.star,
                            color: Color(0xffd0575b),
                            size: 2.5.h,
                                                ),
                                                SizedBox(
                            width: 2,
                                                ),
                                                Text(
                            "4.5",
                            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
                                                ),
                                           
                                              ],
                                            ),
                                            SizedBox(height: 2.h,),
                                             Text(
                            "Animation in After Effect",
                            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.sp),
                                                ),
                                           
                                           
                                ],
                              ),
                            ),
                          ),
                        ),
                 
                 ],);
}