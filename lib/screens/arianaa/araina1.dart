import 'package:draggable_fab/draggable_fab.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Ariana1 extends StatelessWidget {
  const Ariana1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: DraggableFab(
            child: FloatingActionButton(
              backgroundColor: Color(0xff7e9afb),
              onPressed: (){
                 //action after pressing this button
              },
              child: Icon(Icons.play_arrow,color: Colors.white,),
            ),
          ),
       
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
    Stack(children: [
                 ClipRRect(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(55),topLeft: Radius.circular(55)),
                      child: Container(
                        height: 50.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                                            
                      ),
                      
                        child: Image.asset(
                          "assets/images/ariana.jpg",
                          height: 6.8.h,
                          width: 5.h,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Image.asset("assets/icons/menu.png",height: 3.h,color: Colors.white,),
                            Icon(Icons.info_outline,color: Colors.white,size: 3.h,)

                          ],),
                          SizedBox(height: 28.h,),
                            Text("Ariana \nGrande ",style: GoogleFonts.dancingScript(
    textStyle: TextStyle(color: Colors.white, letterSpacing: .9,fontSize: 25.sp,fontWeight: FontWeight.w700),
  ),),
                            SizedBox(height: 1.h,),
                           
                            
                            
                      ],),
                    ),
        
                    
                    
              ],),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Popular",style: TextStyle(color: Colors.black,fontSize: 19.sp,fontWeight: FontWeight.w500),),
                      Text("Show all",style: TextStyle(color: Color(0xff7e9afb),fontSize: 17.sp,fontWeight: FontWeight.w500),),

                    ],),
                    SizedBox(height: 4.h,),
                    Row(
                      children: [
                      Text("No tears left to cry",style: TextStyle(color: Colors.black,fontSize: 16.sp,fontWeight: FontWeight.w500),),
                      Spacer(),
                      Text("5:20",style: TextStyle(color: Colors.black54,fontSize: 17.sp,fontWeight: FontWeight.w500),),
                      SizedBox(width: 7.w,),
Icon(Icons.more_horiz_outlined)

                    ],),
                     Container(
		  margin:  EdgeInsets.only(left: 20.0, right: 8.0),
		  child: Divider(
			color: Colors.black54,
			height: 5.h,
		  )),
          
           Row(
                      children: [
                      Text("Imagine",style: TextStyle(color: Colors.black,fontSize: 16.sp,fontWeight: FontWeight.w500),),
                      Spacer(),
                      Text("3:20",style: TextStyle(color: Colors.black54,fontSize: 17.sp,fontWeight: FontWeight.w500),),
                      SizedBox(width: 7.w,),
Icon(Icons.more_horiz_outlined)

                    ],),
                     Container(
		  margin:  EdgeInsets.only(left: 20.0, right: 8.0),
		  child: Divider(
			color: Colors.black54,
			height: 5.h,
		  )),
       Row(
                      children: [
                      Text("Into you",style: TextStyle(color: Colors.black,fontSize: 16.sp,fontWeight: FontWeight.w500),),
                      Spacer(),
                      Text("4:20",style: TextStyle(color: Colors.black54,fontSize: 17.sp,fontWeight: FontWeight.w500),),
                      SizedBox(width: 7.w,),
Icon(Icons.more_horiz_outlined)

                    ],),
                     Container(
		  margin:  EdgeInsets.only(left: 20.0, right: 8.0),
		  child: Divider(
			color: Colors.black54,
			height: 5.h,
		  )), Row(
                      children: [
                      Text("One last time",style: TextStyle(color: Colors.black,fontSize: 16.sp,fontWeight: FontWeight.w500),),
                      Spacer(),
                      Text("4:40",style: TextStyle(color: Colors.black54,fontSize: 17.sp,fontWeight: FontWeight.w500),),
                      SizedBox(width: 7.w,),
Icon(Icons.more_horiz_outlined)

                    ],),
                     Container(
		  margin:  EdgeInsets.only(left: 20.0, right: 8.0),
		  child: Divider(
			color: Colors.black54,
			height: 5.h,
		  )),        ],
                ),
              ),
      
         
      
      ],),
    );
  }
}