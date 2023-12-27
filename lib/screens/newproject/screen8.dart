
import 'package:flutter/material.dart';
import 'package:flutter_ripple/flutter_ripple.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/screens/newproject/mapSample.dart';
class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Stack(children: [
  Container(
              // height: 100.h,
              // width: 100.w,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff280353),
                    Color(0xff0d032b),
                  ],
                ),
              ),
            ),
            SafeArea(bottom: false,
              child: SingleChildScrollView(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                           radius: 2.h,
                          backgroundColor: Color(0xff4f3a85),
                child: Icon(Icons.arrow_back_ios,color: Color(0xffFFFFFF),size: 17.sp,)),
                Text('Thirsty Thursday',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 19.sp,fontWeight: FontWeight.w700),),
                        CircleAvatar(
                          radius: 2.h,
                          backgroundColor: Color(0xff4f3a85),
                child: Image.asset('assets/icons/x.png',color: Color(0xffFFFFFF),height: 2.5.h,),
                          
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.h,),
               Stack(
                children: [
                  Container(height: 48.h,
                  width: 100.w,
                  decoration: BoxDecoration(color: Color(0xff110029),borderRadius: BorderRadius.circular(25)),
                  
            
                  child: Positioned.fill(
                    child: Align(alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/icons/dd1.png',height: 3.7.h,),
                            SizedBox(width: 6.w,),
                            Image.asset('assets/icons/d2.png',height: 3.7.h,),
                            SizedBox(width: 6.w,),

                            Image.asset('assets/icons/d3.png',height: 3.7.h,),

                          ],
                        ),
                      ),
                    ),
                  ),
                  
                  ),
 
                  Container(
                    height: 40.h,
                    decoration: BoxDecoration(color: Color(0xff000000),borderRadius: BorderRadius.circular(25)),
                  child: Align(alignment: Alignment.center,
                    child: Image.asset('assets/logo/logoo.png',height: 18.h,)),
                  ),
                ],
               ),
               SizedBox(height: 2.h,),
                                Padding(
    padding: const EdgeInsets.all(18.0),
    child: Container(
      
      height: 9.8.h,
      child: ListView.builder(itemCount: 8,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return CircleAvatar(
          radius: 5.8.h,
          backgroundColor: Color(0xff765483),
        );
      },

      ),
    ),
  ),
               SizedBox(height: 4.h),
               Stack(
                 children: [
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                     child: Container(
                      height: 25.h,
                      width: 100.w,
                      child: ClipRRect(borderRadius: BorderRadius.circular(20),
                        child: MapSample()),
                     ),
                   ),
                    Positioned.fill(
                      child: Align(
                        child: FlutterRipple(
                          radius: 5.h,
                                    child: Image.asset("assets/icons/pin.png",height: 4.h,),
                                    rippleColor:Color(0xff454AFD).withOpacity(0.1),
                                    onTap: () {
                                      print("hello");
                                    },
                                  ),
                      ),
                    ),
                 ],
               ),
               SizedBox(height: 2.h,),
               Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Image.asset('assets/logo/f1.png',height: 3.5.h,),
                SizedBox(width: 3.w,),
                Image.asset('assets/logo/f2.png',height: 3.5.h,),
                SizedBox(width: 3.w,),
               
                Image.asset('assets/logo/f3.png',height: 3.5.h,),
                SizedBox(width: 3.w,),
               
                Image.asset('assets/logo/f4.png',height: 3.5.h,),
                SizedBox(width: 3.w,),

                Image.asset('assets/logo/f5.png',height: 3.5.h,),
               
               ],),
               Align(alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('Event Name',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 18.sp,fontWeight: FontWeight.w700),),

                )),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20.0),
                   child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venenatis eget lobortis amet amet mi sagittis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venenatis eget lobortis amet amet mi sagittis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venenatis eget lobortis amet amet mi sagittis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venenatis eget lobortis amet amet mi sagittis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venenatis eget lobortis amet amet mi sagittis.',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16.sp,fontWeight: FontWeight.w300),),
                 ),
Align(alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('Host',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 18.sp,fontWeight: FontWeight.w700),),

                )),
                 
   Padding(
     padding: const EdgeInsets.all(10.0),
     child: Container(
        
        height: 20.h,
        child: ListView.builder(itemCount: 6,
        scrollDirection: Axis.horizontal,
        
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal:8.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 4.h,
                   child: Image.asset('assets/images/c1.png'),
                ),

                SizedBox(height: 2.h,),
                Container(
                  height: 4.5.h,
                  width: 30.w,
                  decoration: BoxDecoration(color: Color(0xff6b29b5),borderRadius: BorderRadius.circular(20)),
                  child: Align(
                    child: Text('Follow',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16.sp,fontWeight: FontWeight.w600),)),
                ),
              ],
            ),
          );
        },

        ),
      ),
   ),

                    SizedBox(height: 1.h,),
                    Container(
  height: 7.h,
  width: 90.w,
  decoration: BoxDecoration(color: Color(0xff6b29b5),borderRadius: BorderRadius.circular(30)),
child: Align(alignment: Alignment.center,
  child: Text('Buy Tickets',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 17.sp,fontWeight: FontWeight.w600),)),

                        
                    )
                ],),
              ),
            )
],),
    );
  }
}