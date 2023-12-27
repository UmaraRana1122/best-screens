import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/widgets/textfeilds.dart';
class ProMax2 extends StatefulWidget {
  const ProMax2({super.key});

  @override
  State<ProMax2> createState() => _ProMax2State();
}

class _ProMax2State extends State<ProMax2> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      FocusManager.instance.primaryFocus!.unfocus();

      },
      child: Scaffold(
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
            
    SizedBox(height: 3.h,),
    textfeilds("assets/icons/222.png",hint1:"Enter Your age" ),
    SizedBox(height: 1.h,),
    textfeilds("assets/icons/444.png",hint1:"Select Gender" ),
    SizedBox(height: 1.h,),

    textfeilds("assets/icons/333.png",hint1:"Select Location" ),
    SizedBox(height: 1.h,),

    textfeilds("assets/icons/111.png",hint1:"Add Address" ),

    SizedBox(height: 1.h,),
    
   
    
   
    SizedBox(height: 5.5.h,),
    Container(
      height: 5.h,
      width: 68.w,
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
        
        ),
    );
    
  }
}