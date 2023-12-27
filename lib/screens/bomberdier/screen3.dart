import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class Bomber3 extends StatelessWidget {
  const Bomber3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        color: Color(0xff8173f9),
        child: SafeArea(
          bottom: false,
          child: Column(children: [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
             child: Container(
               child: Row(children: [
               Icon(Icons.arrow_back_ios,color: Colors.black,size: 3.5.h,),
               Text("Back",style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w600),),
               
               ],),
             ),
           ),
           SizedBox(height: 2.h,),
           Expanded(
             child: Container(
              width: 100.w,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))),
              child: SingleChildScrollView(
                child: Container(
                  child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                    child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                      Row(children: [
                        Column(
                          children: [
                          Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(25)),
                            
                          ),
                        ],),
                        SizedBox(width: 2.w,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
               Text("UI/UX Design",style: TextStyle(color: Colors.black,fontSize: 23.sp,fontWeight: FontWeight.w600),),

SizedBox(height: 1.h,),
               Row(children: [
                Icon(Icons.star,color: Colors.amberAccent,size: 4.h,),
                        SizedBox(width: 2.w,),
               Text("4.5",style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w600),),

               ],)

                        ],)
                      ],),
                      SizedBox(height: 2.h,),
               Text("The Course includes",style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w600),),
               SizedBox(height: 2.h,),
               Container(
                  height: 36.h,
                           width: 95.w,

                     decoration: BoxDecoration(
                       color: Color(0xffFFFFFF),
                       borderRadius: BorderRadius.circular(40),
                       boxShadow: [
                         BoxShadow(color: Colors.black.withOpacity(0.2),spreadRadius: 1,blurRadius: 8)
                       ]
                     ),
                     child: Column(children: [
                      Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 11,vertical: 17),

                        child: Row(children: [
                          CircleAvatar(
                            radius: 4.h,
                            backgroundColor: Color(0xff8072fb),
                            child: Icon(Icons.video_camera_front_outlined,size: 4.h,color: Colors.white,),
                          ),
                          SizedBox(width: 2.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
               Text("12 Video Tutorials",style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
               SizedBox(height: 1.h,),
               Row(children: [
Text("250 minutes ",style: TextStyle(color: Color(0xffb7abd2),fontSize: 16.sp,fontWeight: FontWeight.w600),),
               Text("of intersting lectures",style: TextStyle(color: Color(0xffd6d6d6),fontSize: 16.sp,fontWeight: FontWeight.w600),),

               ],)
               


                            ],
                          )
                        ],),

                      ),
                      Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 11,vertical: 12),

                        child: Row(children: [
                          CircleAvatar(
                            radius: 4.h,
                            backgroundColor: Color(0xff30bdd1),
                            child: Icon(Icons.task_outlined,size: 4.h,color: Colors.white,),
                          ),
                          SizedBox(width: 2.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
               Text("12 Video Tutorials",style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
               SizedBox(height: 1.h,),
               Row(children: [
Text("250 minutes ",style: TextStyle(color: Color(0xffb7abd2),fontSize: 16.sp,fontWeight: FontWeight.w600),),
               Text("of intersting lectures",style: TextStyle(color: Color(0xffd6d6d6),fontSize: 16.sp,fontWeight: FontWeight.w600),),

               ],)
               


                            ],
                          )
                        ],),

                      ),
                      Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 11,vertical: 12),

                        child: Row(children: [
                          CircleAvatar(
                            radius: 4.h,
                            backgroundColor: Color(0xfff15180),
                            child: Icon(Icons.folder,size: 4.h,color: Colors.white,),
                          ),
                          SizedBox(width: 2.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
               Text("12 Video Tutorials",style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
               SizedBox(height: 1.h,),
               Row(children: [
Text("250 minutes ",style: TextStyle(color: Color(0xffb7abd2),fontSize: 16.sp,fontWeight: FontWeight.w600),),
               Text("of intersting lectures",style: TextStyle(color: Color(0xffd6d6d6),fontSize: 16.sp,fontWeight: FontWeight.w600),),

               ],)
               


                            ],
                          )
                        ],),

                      ),
                     ],),
               ),
               SizedBox(height: 3.h,),
               Text("Teacher",style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w600),),
               SizedBox(height: 3.h,),
               Container(
                 decoration: BoxDecoration(
                       color: Color(0xffFFFFFF),
                       borderRadius: BorderRadius.circular(25),
                       boxShadow: [
                         BoxShadow(color: Colors.black.withOpacity(0.2),spreadRadius: 1,blurRadius: 8)
                       ]
                     ),
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(children: [
                        Column(children: [
                          CircleAvatar(
                            radius: 4.h,
                            backgroundImage: AssetImage("assets/images/girl2.png"),
                          ),
                        ],),
                        SizedBox(width: 4.w,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
               Text("Anna",style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
               SizedBox(height: 1.h,),
               Text("Designer",style: TextStyle(color: Colors.grey,fontSize: 17.sp,fontWeight: FontWeight.w600),),


                        ],)
                       ],),
                     ),

               ),
               SizedBox(height: 3.h,),
               Align(
                 child: Container(
                  height: 7.h,
                  width: 80.w,
                  decoration: BoxDecoration(color: Colors.black54,borderRadius: BorderRadius.circular(25)),
                  child: Align(
                    child: Text("Start",style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w600),)),
                 ),
               )

               
                    ],),
                  ),
                ),
              )
             ),
           )
          ],),
        
        ),
      ),
    );
  }
}
      