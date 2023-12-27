import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
Widget textfeilds(
 String newImage,

{
 String hint1 ='Name',

}

)

{
  
  return    Padding(
      padding: const EdgeInsets.all(8.0),
      child:   TextField(

     enabled: true,

      
       decoration: InputDecoration(

        contentPadding: EdgeInsets.all(11),
       
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(width: .3.w, color: Color(0xffFFFFFF)), 
          borderRadius: BorderRadius.circular(50.0),
        ),
         focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffFFFFFF),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
        
        hintText: hint1,
        hintStyle: TextStyle(color: Color(0xffFFFFFF),fontWeight: FontWeight.w300,fontSize: 15.sp),
        prefixIcon: Padding(
        padding: const EdgeInsets.symmetric(vertical:16.0),
        child: Image.asset(newImage,height:1.h ,),
      ),
      ),
      
      ),
    );                
  
          
} 