import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/widgets/drawer.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
  backgroundColor: Color(0xff043056),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SafeArea(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Align(
              child: CircleAvatar(
                radius: 7.5.h,
                backgroundColor: Color(0xff09355b),
                child: CircleAvatar(
                  radius: 6.3.h,
                  backgroundColor: Color(0xff264a6b),
                  child: CircleAvatar(
                    radius: 5.h,
                    backgroundImage: AssetImage('assets/images/girl2.png'),
                  ),
                ),
              ),
            ),
            Text('Welcome',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16.sp,fontWeight: FontWeight.w300),),
            Text('Kubra Khan',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 17.sp,fontWeight: FontWeight.w700),),
           
            SizedBox(height: 4.h,),
             Container(
                      height: 5.h,
                      width: 42.w,
                      decoration: BoxDecoration(color: Color(0xff1a4164),borderRadius: BorderRadius.circular(13)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                          Image.asset('assets/icons/1111.png',height: 1.7.h,),
                          SizedBox(width: 2.w,),
                                    
                                Text('Home',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 15.sp,fontWeight: FontWeight.w600),),
                        ],),
                      ),
                    ),
SizedBox(height: 1.h,),

                    
drawCircle('Profile', Colors.transparent, 'assets/icons/2222.png'),
SizedBox(height: 1.h,),
drawCircle('Privacy', Colors.transparent, 'assets/icons/3333.png'),
SizedBox(height: 1.h,),

drawCircle('Terms & \ncondition', Colors.transparent, 'assets/icons/4444.png'),
SizedBox(height: 1.h,),

drawCircle('Favourite', Colors.transparent, 'assets/icons/5555.png'),
SizedBox(height: 1.h,),

drawCircle('Logout', Colors.transparent, 'assets/icons/6666.png'),

               
                 
                 
              
             
        
          ],),
        ),
      ));

  }
}