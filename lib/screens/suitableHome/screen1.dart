import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class Suitable extends StatefulWidget {
  const Suitable({super.key});

  @override
  State<Suitable> createState() => _SuitableState();
}
int currentPageIndex = 0;

class _SuitableState extends State<Suitable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
         child: FloatingActionButton(onPressed: () {},
                     child: Icon(Icons.arrow_back_ios_new,size: 2.5.h,),
                     foregroundColor: Colors.white,
                     backgroundColor: Color(0xfffa8107),
                     ),
       ),
    
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: GNav(
  rippleColor: Colors.white, // tab button ripple color when pressed
  hoverColor: Colors.white, // tab button hover color
  haptic: true, // haptic feedback
  tabBorderRadius: 40, 
  tabActiveBorder: Border.all(color: Colors.white, width: 1), // tab button border
  tabShadow: [BoxShadow(color: Colors.white.withOpacity(0.5), blurRadius: 8)], // tab button shadow
  curve: Curves.easeOutExpo, // tab animation curves
  duration: Duration(milliseconds: 900), // tab animation duration
  gap: 8, // the tab button gap between icon and text 
  color: Colors.black, // unselected icon color
  activeColor: Colors.purple, // selected icon and text color
  iconSize: 40, // tab button icon size
  tabBackgroundColor: Colors.purple.withOpacity(0.1), // selected tab background color
  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1), // navigation bar padding
  tabs: [
    GButton(
        icon: (Icons.home),
        text: 'Home',
    ),
    GButton(
             icon: (Icons.favorite_border_outlined),

        text: 'Likes',
    ),
    GButton(
             icon: (Icons.chat_bubble_outline),

        text: 'Chat',
    ),
    GButton(
             icon: (Icons.person_outline_outlined),

        text: 'Profile',
    )
  ]
),
      ),
body: SafeArea(
  bottom: false,
  child:   Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 7),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Row(children: [
        Text("Howdy",style: TextStyle(color: Colors.black54,fontSize: 18.sp,fontWeight: FontWeight.w500),),
        SizedBox(width: 1.w,),
        Text("Macell",style: TextStyle(color: Colors.black,fontSize: 19.sp,fontWeight: FontWeight.w600),),
        Spacer(),
        CircleAvatar(radius: 2.8.h,
        backgroundImage: AssetImage("assets/images/anna.png"),),


        
      ],),
      SizedBox(height: 3.h,),
        Text("Discover ",style: TextStyle(color: Colors.black,fontSize: 24.sp,fontWeight: FontWeight.w700),),
        Row(
          children: [
            Text("Suitable ",style: TextStyle(color: Colors.black87,fontSize: 24.sp,fontWeight: FontWeight.w500),),
            Text("Home ",style: TextStyle(color: Colors.black87,fontSize: 24.sp,fontWeight: FontWeight.w600),),

          ],
        ),
        SizedBox(height: 3.h,),
        Row(children: [
           Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom
          ),
          child: Container(
                height: 6.h,
                width: 77.w,
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    color: Color(0xffe4d2f7),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),topLeft: Radius.circular(50),bottomRight: Radius.circular(50))),
                child: Expanded(
                  child: Row(children: [
                        
                         
                         SizedBox(width: 2.w,),
                           Expanded(
                            child: TextField(
                              style: TextStyle(color: Colors.white,fontSize: 16.sp),

                                
                                    keyboardType: TextInputType.multiline,
                                    maxLines: null,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        prefixIcon: Icon(Icons.search,color: Color(0xff6f00bb),size: 3.h,),
                                        // prefixIconColor: Color(0xff6f00bb),
                                        hintText: 'find a good home',
                                        hintStyle: TextStyle(color: Color(0xff6f00bb), fontSize: 16.sp),
                                        
                                       ),
                                  ),
                          ), 
                          
                      
                  
                   
                  ],),
                )
              ),
        ), 
        Spacer(),
        Icon(Icons.add_alert,color: Color(0xff6f00bb),size: 4.h,),
        ],),
        SizedBox(height: 5.h,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            Stack(children: [
                 ClipRRect(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(55),topLeft: Radius.circular(55),bottomRight: Radius.circular(55)),
                      child: Container(
                        height: 45.h,
                        width: 62.w,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                                            
                      ),
                      
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.asset(
                            "assets/images/purple.jpg",
                            height: 6.8.h,
                            width: 5.h,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 3.6.h,
                            child: CircleAvatar(
                              radius: 3.4.h,
                              backgroundColor: Color(0xffcb8ffc),
                              child: 
                          Align(child: Text("30% Off",style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w500),)),
                              
                            ),
                          ),
                          SizedBox(height: 28.h,),
        Text("Family House",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w800),),
        SizedBox(height: 1.h,),
        Row(children: [
                      Icon(Icons.location_on,color: Colors.white,),
        Text("OBB Alisha45",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w400),),
        
                    ],),
        
                      ],),
                    ),
        
                    
                    
              ],),
              SizedBox(width: 5.w,),
               Stack(children: [
                 ClipRRect(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(55),topLeft: Radius.circular(55),bottomRight: Radius.circular(55)),
                      child: Container(
                        height: 45.h,
                        width: 62.w,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                                            
                      ),
                      
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.asset(
                            "assets/images/purple.jpg",
                            height: 6.8.h,
                            width: 5.h,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 3.6.h,
                            child: CircleAvatar(
                              radius: 3.4.h,
                              backgroundColor: Color(0xffcb8ffc),
                              child: 
                          Align(child: Text("30% Off",style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w500),)),
                              
                            ),
                          ),
                          SizedBox(height: 28.h,),
        Text("Family House",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w800),),
        SizedBox(height: 1.h,),
        Row(children: [
                      Icon(Icons.location_on,color: Colors.white,),
        Text("OBB Alisha45",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w400),),
        
                    ],),
        
                      ],),
                    ),
        
                    
                    
              ],),
          ],),
        )



    ],),
  ),
),
    );
  }
}