import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class NameScreen extends StatelessWidget {
  const NameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Align(
              alignment: Alignment.topLeft,
              child: CircleAvatar(
                radius: 6.h,
                backgroundImage: AssetImage('assets/images/girl2.png'),
              ),
            ),
            SizedBox(height: 2.h,),

            Text('Sarah Abbas',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 19.sp,fontWeight: FontWeight.w700),),
           
            SizedBox(height: 4.h,),
             Padding(
               padding: const EdgeInsets.all(12.0),
               child: Row(
                 children: [
                  Icon(Icons.payment,color: Colors.white,),
                 SizedBox(width: 3.w,),
                           
                       Text('Payment',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 15.sp,fontWeight: FontWeight.w600),),
               ],),
             ),
SizedBox(height: 1.h,),
 Padding(
               padding: const EdgeInsets.all(12.0),
               child: InkWell(
                onTap: () {
                  
                },
                 child: Row(
                   children: [
                    Icon(Icons.calendar_month,color: Colors.white,),
                   SizedBox(width: 3.w,),
                             
                         Text('Promo',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 15.sp,fontWeight: FontWeight.w600),),
                 ],),
               ),
             ), Padding(
               padding: const EdgeInsets.all(12.0),
               child: InkWell(
                onTap: () {
                  
                },
                 child: Row(
                   children: [
                    Icon(Icons.notification_add,color: Colors.white,),
                   SizedBox(width: 3.w,),
                             
                         Text('Notification',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 15.sp,fontWeight: FontWeight.w600),),
                 ],),
               ),
             ), Padding(
               padding: const EdgeInsets.all(12.0),
               child: InkWell(
                onTap: () {
                  
                },
                 child: Row(
                   children: [
                    Icon(Icons.help,color: Colors.white,),
                   SizedBox(width: 3.w,),
                             
                         Text('Help',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 15.sp,fontWeight: FontWeight.w600),),
                 ],),
               ),
             ), Padding(
               padding: const EdgeInsets.all(12.0),
               child: InkWell(
                onTap: () {
                  
                },
                 child: Row(
                   children: [
                    Icon(Icons.contacts,color: Colors.white,),
                   SizedBox(width: 3.w,),
                             
                         Text('About Us',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 15.sp,fontWeight: FontWeight.w600),),
                 ],),
               ),
             ), Padding(
               padding: const EdgeInsets.all(12.0),
               child: InkWell(
                onTap: () {
                  
                },
                 child: Row(
                   children: [
                    Icon(Icons.rate_review,color: Colors.white,),
                   SizedBox(width: 3.w,),
                             
                         Text('Rate Us',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 15.sp,fontWeight: FontWeight.w600),),
                 ],),
               ),
             ),

                    

               
                 
                 
              
             
        
          ],),
        ),
      )
    );
  }
}