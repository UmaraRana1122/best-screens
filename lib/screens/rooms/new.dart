import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class Virtual2 extends StatefulWidget {
  const Virtual2 ({super.key});

  @override
  State<Virtual2> createState() => _Virtual2State();
}


class _Virtual2State extends State<Virtual2> {
  
int _selectedIndex = 0;

  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Color(0xff2d4c5e),
      bottomNavigationBar: Container(
        height: 10.h,
        decoration: BoxDecoration(color: Color(0xff224050)),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
              child: Image.asset("assets/icons/hd1.png",
              color: _selectedIndex == 0 ? Color(0xffb2ada0) : Color(0xff5a7e90),
              height: 4.h,)),
               InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
              child: Image.asset("assets/icons/block.png",
              color: _selectedIndex == 1 ? Color(0xffb2ada0) : Color(0xff5a7e90),
              height: 4.h,)),
               InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
              child: Image.asset("assets/icons/shop.png",
              color: _selectedIndex == 2 ? Color(0xffb2ada0) : Color(0xff5a7e90),
              height: 4.h,)),




          ],),
        ),
      ),


      
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
Icon(Icons.menu,color: Color(0xffdebeab),size: 4.h,),
Image.asset("assets/icons/dots.png",height: 3.h,color: Color(0xffccc6bd),)


              ],),
            SizedBox(height:6.h),

            Text("Choose your own \nready design",style: TextStyle(color: Colors.white,fontSize: 22.sp,fontWeight: FontWeight.w600),),
            SizedBox(height:4.h),
SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child:   Row(children: [
    Column(
      children: [
        ClipPath(
                  clipper: HexagonalClipper(reverse: true),
                  child: Container(
                    height: 25.h,
                    width: 50.w,
                    color: Colors.red,
                   
            
          
                    child: Image.asset("assets/images/kitchen.png",fit: BoxFit.cover,),
                    
                  ),
                ),
            SizedBox(height:4.h),

                Text("Kitchen I",style: TextStyle(color: Colors.white,fontSize: 22.sp,fontWeight: FontWeight.w600),),
            SizedBox(height:2.h),

                Text("The furniture from \nquality designed \nhouses.",style: TextStyle(color: Color(0xff718fa0),fontSize: 17.sp,fontWeight: FontWeight.w600),),
            SizedBox(height:4.h),

                               Text("\$48,000",style: TextStyle(color: Colors.white,fontSize: 17.sp,fontWeight: FontWeight.w600),),




      ],
    ),
            SizedBox(width: 5.w,),
          Column(
      children: [
        ClipPath(
                  clipper: HexagonalClipper(reverse: true),
                  child: Container(
                    height: 25.h,
                    width: 50.w,
                    color: Colors.red,
                   
            
          
                    child: Image.asset("assets/images/kitchen.png",fit: BoxFit.cover,),
                    
                  ),
                ),
            SizedBox(height:4.h),

                Text("Kitchen I",style: TextStyle(color: Colors.white,fontSize: 22.sp,fontWeight: FontWeight.w600),),
            SizedBox(height:2.h),

                Text("The furniture from \nquality designed \nhouses.",style: TextStyle(color: Color(0xff718fa0),fontSize: 17.sp,fontWeight: FontWeight.w600),),
            SizedBox(height:4.h),

                               Text("\$48,000",style: TextStyle(color: Colors.white,fontSize: 17.sp,fontWeight: FontWeight.w600),),




      ],
    ),
             SizedBox(width: 5.w,),
          Column(
      children: [
        ClipPath(
                  clipper: HexagonalClipper(reverse: true),
                  child: Container(
                    height: 25.h,
                    width: 50.w,
                    color: Colors.red,
                   
            
          
                    child: Image.asset("assets/images/kitchen.png",fit: BoxFit.cover,),
                    
                  ),
                ),
            SizedBox(height:4.h),

                Text("Kitchen I",style: TextStyle(color: Colors.white,fontSize: 22.sp,fontWeight: FontWeight.w600),),
            SizedBox(height:2.h),

                Text("The furniture from \nquality designed \nhouses.",style: TextStyle(color: Color(0xff718fa0),fontSize: 17.sp,fontWeight: FontWeight.w600),),
            SizedBox(height:4.h),

                               Text("\$48,000",style: TextStyle(color: Colors.white,fontSize: 17.sp,fontWeight: FontWeight.w600),),




      ],
    ),
  ],),
),









           


          ],),
        ),
      ),
    );
  }
}