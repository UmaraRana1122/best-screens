import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
Widget requestcontainer(){
  return  Container(
    margin: EdgeInsets.all(10),
    height: 38.h,
    width: 85.w,
    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
                  Text("Order clerk",style: TextStyle(color: Colors.black54,fontSize: 15.5.sp,fontWeight: FontWeight.w300),),
                  SizedBox(height: .4.h,),
                  Text("Devid",style: TextStyle(color: Colors.black,fontSize: 19.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 2.h,),


                  Text("State",style: TextStyle(color: Colors.black54,fontSize: 15.5.sp,fontWeight: FontWeight.w300),),
                  SizedBox(height: .4.h,),

                  Text("CSC response",style: TextStyle(color: Colors.black,fontSize: 15.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 2.h,),
                  
                  Text("Order Time",style: TextStyle(color: Colors.black54,fontSize: 15.5.sp,fontWeight: FontWeight.w300),),
                  SizedBox(height: .4.h,),

                  Text("2019-03-21 04:33",style: TextStyle(color: Colors.black,fontSize: 15.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 2.h,),

                  Text("Condition of judgement",style: TextStyle(color: Colors.black54,fontSize: 15.5.sp,fontWeight: FontWeight.w300),),
                  SizedBox(height: .4.h,),

                  Text("CSC response condition, Lorem ispum doller sit ametrsrtrss",style: TextStyle(color: Colors.black,fontSize: 15.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 2.h,),


 Container(
                  height: 5.h,
                  width: 63.w,
                  decoration: BoxDecoration(color: Color(0xfff7e6e6),borderRadius: BorderRadius.circular(12)),
                  child: 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(child: Text("CSC Check",style: TextStyle(color: Color(0xffbd2c2b),fontSize: 16.sp,fontWeight: FontWeight.w500),)),
                        Icon(Icons.arrow_forward_outlined,color: Color(0xffbd2c2b),size: 3.h,)
                      ],
                    ),
                  ),

                ),





      ],),
    ),
  );
}