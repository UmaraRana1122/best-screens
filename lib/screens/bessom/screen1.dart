
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/screens/bessom/widgets.dart';

class Bessom1 extends StatelessWidget {
  const Bessom1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      bottomNavigationBar: BlurryContainer(
      
  blur: 100,
  width: 110.w,
  height: 10.h,
  elevation: 12,
  color: Colors.transparent,
  padding: const EdgeInsets.all(8),
  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
          
        
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/icons/besom1.png", height: 2.5.h),
              Image.asset("assets/icons/besom2.png", height: 2.5.h),
              Image.asset("assets/icons/besom3.png", height: 2.5.h),
              Image.asset("assets/icons/besom4.png", height: 2.5.h),
      
             
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
             Image.asset("assets/icons/menu.png",color: Colors.black,height: 4.h,),
             Text("Besom",style: TextStyle(color: Colors.black,fontSize: 22.sp,fontWeight: FontWeight.w600),),
             Image.asset("assets/icons/cart.png",color: Colors.black,height: 4.5.h,),
                
              ],),
              SizedBox(height: 5.h,),
              besomContainer("10% Discount", "Buy Besom Pressed Juice \nand get 10% discount \non every purchase", "Explore More", "assets/images/juice.png", Color(0xfff1bf42)),
              
               
               SizedBox(height: 2.h,),
              
                  besomContainer2("Besom Orange \nJuice","25.99" ,"Buy Now", "\$", "assets/images/juice.png", Color(0xffdc6820)) ,
               SizedBox(height: 2.h,),

                  besomContainer2("Besom Orange \nJuice","25.99" ,"Buy Now", "\$", "assets/images/juice.png", Color(0xffdc6820)),
          
                  
          
            ],),
          ),
        ),
      ),
    );
  }
}