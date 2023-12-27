import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/screens/bomberdier/widgets.dart';
class Bomber2 extends StatelessWidget {
  const Bomber2({super.key});

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
                CircleAvatar(
                  radius: 3.5.h,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(radius: 3.2.h,
                  backgroundImage: AssetImage("assets/images/anna.png",),),
                ),
                SizedBox(width: 3.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Hi, Devis",style: TextStyle(color: Colors.white,fontSize: 22.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 1.h,),
                  Text("Learning is easy and faster with us.",style: TextStyle(color: Colors.white,fontSize: 17.sp,fontWeight: FontWeight.w300),),

                ],)
               ],),
             ),
           ),
           SizedBox(height: 2.h,),
           Expanded(
             child: Container(
              width: 100.w,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Top Courses",style: TextStyle(color: Colors.black,fontSize: 22.sp,fontWeight: FontWeight.w400),),
           SizedBox(height: 2.h,),

                 SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                   child: Row(children: [
                    courseContainer(),
                    SizedBox(width: 3.w,),
                    courseContainer(),
                    SizedBox(width: 3.w,),
                 
                  courseContainer(),
                    SizedBox(width: 3.w,),
                 
                  courseContainer(),
                 
                 
                   ],),
                 ),
                 SizedBox(height: 2.h,),
                 Expanded(
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("For You",style: TextStyle(color: Colors.black,fontSize: 22.sp,fontWeight: FontWeight.w400),),
                   SizedBox(height: 2.h,),
                                 // SingleChildScrollView(
                                 //   scrollDirection: Axis.horizontal,
                                 //   child: Row(children: [
                                 //     forYou(),
                                 //     SizedBox(width: 6.w,),
                                 //     forYou(),
                                 //     SizedBox(width: 6.w,),
                 
                                 //     forYou(),
                 
                                 //   ],),
                                 // ),
                                Expanded(
                                  child: GridView.count(
                                                           crossAxisCount: 2,
                                                           crossAxisSpacing: 10.0,
                                                           mainAxisSpacing: 10.0,
                                                           shrinkWrap: true,
                                                           childAspectRatio: 0.78,
                                                           children: List.generate(20, (index) {
                                                               return Padding(
                                   padding: const EdgeInsets.all(10.0),
                                   child:forYou()
                                                               );
                                                             })),
                                )
                                 
                   
                   ],),
                 ),

                ],),
              ),
             ),
           )
          ],),
        
        ),
      ),
    );
  }
}
      