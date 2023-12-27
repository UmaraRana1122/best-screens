import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class ProMax extends StatelessWidget {
  const ProMax({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
         
          // Container(),
          Positioned.fill(
            
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Container(
                height: 65.h,
                width: 100.w,
                decoration: const BoxDecoration(
                    color: Color(0xfff6cdec),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35))),
                
              ),
                    ),
            ),
          ),
         Positioned(
          bottom: 0,
           child: Container(
             height: 66.h,
             width: 100.w,
             decoration: const BoxDecoration(
                 color: Color(0xffe98ad3),
                 borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(35),
                     topRight: Radius.circular(35))),
             
           ),
         ),
          Positioned(
          bottom: 0,
           child: Container(
             height: 64.h,
             width: 100.w,
             decoration: const BoxDecoration(
                 color: Color(0xffda39b4),
                 borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(35),
                     topRight: Radius.circular(35))),
                     child: Padding(
                       padding: const EdgeInsets.all(30.0),
                       child: Column(
                        children: [
                          Spacer(),
                          Align(alignment: Alignment.centerLeft,
                  child: Text('Information',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 20.sp,fontWeight: FontWeight.w600),)),
                  SizedBox(height: .8.h,),
                  Align(alignment: Alignment.centerLeft,
                  child: Text('add Info here',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16.sp,fontWeight: FontWeight.w300),)),
                  SizedBox(height: 2.h,),
               CircleAvatar(
                backgroundColor: Color(0xffFFFFFF),
  radius: 8.5.h,
  child: Stack(
    children: [
      Align(
        alignment: Alignment.bottomRight,
        
          child: CircleAvatar(
            radius: 3.4.h,
            backgroundColor: Colors.transparent,
            child: Image.asset('assets/icons/camera4.png',height: 4.4.h,),
          ),
        ),
      
    ]
  )
),
SizedBox(height: 3.h,),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   TextField(
    
     decoration: InputDecoration(
      contentPadding: EdgeInsets.all(11),
      enabledBorder: OutlineInputBorder(
        borderSide:
            BorderSide(width: .3.w, color: Color(0xffFFFFFF)), 
        borderRadius: BorderRadius.circular(50.0),
      ),
      hintText: 'Enter Your Name',
      hintStyle: TextStyle(color: Color(0xffFFFFFF),fontWeight: FontWeight.w300,fontSize: 15.sp),
      prefixIcon: Padding(
      padding: const EdgeInsets.symmetric(vertical:16.0),
      child: Image.asset('assets/icons/222.png',height:1.h ,),
    ),
    ),
    
  ),
),
SizedBox(height: 6.h,),
Container(
  height: 5.h,
  width: 70.w,
  decoration: BoxDecoration(color: Color(0xffFEC842),borderRadius: BorderRadius.circular(50)),
  child: Align(
    child: Text('Next',style: TextStyle(color: Color(0xff042F57),fontSize: 17.sp,fontWeight: FontWeight.w600),)),
),
                          Spacer(),

                        ],
                       ),
                     ),
             
           ),
         ),
        Positioned.fill(child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 40.h,
            child: Column(
              children: [
                Spacer(),
                Image.asset('assets/logo/gabu.png',height: 8.h,),
                Spacer(),
                
              

              ],
            ),
            
          ),
          
          )),
          
        ],
      ),
      
      );
    
  }
}