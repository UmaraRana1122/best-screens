import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:task1/widgets/foodItems.dart';
class Pro7 extends StatefulWidget {

   const Pro7({super.key,});

  @override
  State<Pro7> createState() => _Pro7State();
}
int index=0;

class _Pro7State extends State<Pro7> {
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
      FocusManager.instance.primaryFocus!.unfocus();
        
      },
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body:
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            width: 85.w,
            child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:18.0),
            
              child: SafeArea(
                
                child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      
                  children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset('assets/icons/pro2.png',height: 5.4.h,)),
                  Text('Food',style: TextStyle(color: Color(0xff000000),fontSize: 20.sp,fontWeight: FontWeight.w700),),
                  SizedBox(height: 2.h,),
                  TextField(
                   decoration: InputDecoration(
                    enabled: false,
                    
                    contentPadding: EdgeInsets.all(22.0),
                    border: InputBorder.none,
                disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50),borderSide: BorderSide(color: Colors.transparent)),
        
                    filled: true,
                   fillColor: Color(0xfff8f8f9),
                   focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50),borderSide: BorderSide(color: Colors.transparent)),
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Color(0xff8C8C8C),fontWeight: FontWeight.w500,fontSize: 16.5.sp),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(vertical:15.0),
                      child: Image.asset('assets/icons/sear.png',height:2.5.h ,),
                    ),
                  ),
                  
                ),
        Expanded(child: SingleChildScrollView(
        
          child:   Column(children: [
                SizedBox(height: 7.h,),
foodItems(Color(0xffFEC842), "Burger", "assets/images/burger.png", imgWidth: 40),
foodItems(Color(0xff07CD7C), "Dessert", "assets/images/dessert.png",imgWidth: 41),
foodItems(Color(0xffFF4539), "Seafood", "assets/images/seafood.png",imgWidth: 43.5),
foodItems(Color(0xff043057), "Wings", "assets/images/wings.png",imgWidth: 58),
foodItems(Color(0xffDA3AB4), "Ice Cream", "assets/images/ice.png",imgWidth: 35),
foodItems(Color(0xffFEC842), "Cafes", "assets/images/tea.png",imgWidth: 33),

            ],),
        ))
               
                ],),
              ),
            ),
          ),
        ),
      
      ),
    );
  }
}