import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class Pro6 extends StatelessWidget {
 const  Pro6({super.key});
  // final zoomDrawerController = ZoomDrawerController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Column(children: [
  Padding(
        padding: const EdgeInsets.symmetric(horizontal:15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          InkWell(
            onTap: (){
            ZoomDrawer.of(context)!.open();
            },
            child: Image.asset('assets/icons/pro1.png',height: 2.2.h,)),
          Image.asset('assets/icons/pro2.png',height: 5.4.h,),


        ],),
      ),
      SizedBox(height: 8.h,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal:18.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Column(

            children: [
                   Container(
              height: 20.h,
              width: 41.w,
              decoration: BoxDecoration(color: Color(0xffDA3AB4),borderRadius: BorderRadius.circular(20)),
              
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset('assets/icons/gabu1.png',height: 8.5.h,),
                  SizedBox(height: 3.h,),
                  Text('Food',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 20.sp,fontWeight: FontWeight.w700),)
                ],),

            
              ),
              SizedBox(height: 2.h,),
                           Container(
              height: 22.h,
              width: 42.w,
              decoration: BoxDecoration(color: Color(0xffFF4539),borderRadius: BorderRadius.circular(20)),
              
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/gebu3.png',height: 6.h,),
                  SizedBox(height: 2.h,),
                  Text('Pharmacy',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 18.sp,fontWeight: FontWeight.w600),)
                ],),

            
              ),
              SizedBox(height: 1.h,),

                  Container(
              height: 22.h,
              width: 42.w,
              decoration: BoxDecoration(color: Color(0xffFEC842),borderRadius: BorderRadius.circular(20)),
              
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset('assets/icons/gebu4.png',height: 6.h,),
                  SizedBox(height: 2.h,),
                  Text('Hotels',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 18.sp,fontWeight: FontWeight.w600),)
                ],),

            
              ),
          ],),
              SizedBox(width: 2.h,),
          

          Column(children: [
                                       SizedBox(width: 4.w,),
                Container(
              height: 23.h,
              width: 41.w,
              decoration: BoxDecoration(color: Color(0xff07CD7C),borderRadius: BorderRadius.circular(20)),
              
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset('assets/icons/gabu2.jpg',height: 11.h,),
                  SizedBox(height: 3.h,),
                  Text('Products',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 19.5.sp,fontWeight: FontWeight.w700),)
                ],),

            
              ),
              SizedBox(height: 2.h,),

                              Container(
                height: 27.h,
                width: 41.w,
                decoration: BoxDecoration(color: Color(0xff043057),borderRadius: BorderRadius.circular(20)),
                
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Image.asset('assets/icons/gebu5.jpg',height: 9.h,),
                    SizedBox(height: 4.h,),
                    Text('Services',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 19.5.sp,fontWeight: FontWeight.w700),)
                  ],),
          
              
                ),
              SizedBox(height: 2.h,),

                                
                    Container(
                  height: 20.h,
                  width: 41.w,
                  decoration: BoxDecoration(color: Color(0xffD9D9D9),borderRadius: BorderRadius.circular(20)),
                  
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Image.asset('assets/icons/gebu6.png',height: 5.h,),
                      SizedBox(height: 4.h,),
                      Text('My Favs',style: TextStyle(color: Color(0xff656565),fontSize: 19.sp,fontWeight: FontWeight.w700),)
                    ],),

                
                  ),
          ],)

        ],),
      ),


            


          


          
            

         
             

            

      
      
      ],),
      
    
      ),
    );
  }
}