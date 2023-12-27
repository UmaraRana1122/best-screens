import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/screens/instagram/widgets.dart';
class Curved extends StatefulWidget {
  const Curved({super.key});

  @override
  State<Curved> createState() => _CurvedState();
}
int _page = 0;
class _CurvedState extends State<Curved> {
  get _bottomNavigationKey => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          color: Color(0xff070707),
          backgroundColor: Colors.white,
          height: 75,
          key: _bottomNavigationKey,
          items: <Widget>[
            Icon(Icons.mic, size: 30,color: Colors.white,),
            Icon(Icons.message_rounded, size: 30,color: Colors.white,),
            Icon(Icons.home, size: 30,color: Colors.white,),
            Icon(Icons.favorite_border_outlined, size: 30,color: Colors.white,),
            Icon(Icons.search, size: 30,color: Colors.white,),


          ],
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: Container(
          //  height: 20.h,
            color: Colors.white,
            child: SafeArea(bottom: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                 Container(
                  child: 
                   Row(children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                     Text("Hi Nevil,",style: TextStyle(color: Colors.black54,fontSize: 18.sp,fontWeight: FontWeight.w500),),
                     SizedBox(height: 1.h,),
                     Text("Welcome Back",style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w700),),

                   ],),
                   Spacer(),
                   Container(
                     height: 7.h,
                     width: 20.w,
                     child:ClipRRect(
                      borderRadius: BorderRadius.circular(17),
                      
                      child: Image.asset("assets/images/person9.png",height: 7.h,fit: BoxFit.contain,))
                     
                   )
                ],),
                 ),
                 SizedBox(height: 3.h,),
                 SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                   child: Container(
                     child: Row(children: [
                      Column(children: [
                 CircleAvatar(
                      radius: 4.h,
                      backgroundColor: Color(0xff0a0a0a),
                      child: Icon(Icons.person_add_alt_1_outlined,size: 3.7.h,color: Colors.white,),
                     ),
                     SizedBox(height: 2.h,),
                     Text("Invite",style: TextStyle(color:Colors.black,fontSize: 18.sp ,fontWeight: FontWeight.w500),)
                      ],),
                      SizedBox(width: 8.w,),
                        Column(children: [
                 FDottedLine(
                  color: Colors.black54,
  height: 70.0,
  width: 70.0,
  strokeWidth: 2.0,
  dottedLength: 10.0,
  space: 2.0,
  
  
  /// Set corner
  corner: FDottedLineCorner.all(50),
                     child: CircleAvatar(
                        radius: 4.h,
                        backgroundColor: Colors.white,
                        
                                          child: CircleAvatar(radius: 3.5.h,
                                          backgroundColor: Color(0xff0a0a0a),
                                          backgroundImage: AssetImage("assets/images/anna.png"), ),
                 
                       ),
                 ),
                     SizedBox(height: 2.h,),
                     Text("Jane",style: TextStyle(color:Colors.black54,fontSize: 18.sp ,fontWeight: FontWeight.w500),)
                      ],),
                                       SizedBox(width: 8.w,),


                       Column(children: [
                 FDottedLine(
                  color: Colors.greenAccent,
  height: 70.0,
  width: 70.0,
  strokeWidth: 2.0,
  dottedLength: 10.0,
  space: 2.0,
  
  
  /// Set corner
  corner: FDottedLineCorner.all(50),
                     child: CircleAvatar(
                        radius: 4.1.h,
                        backgroundColor: Colors.white,
                        
                                          child: CircleAvatar(radius: 3.5.h,
                                          backgroundColor: Color(0xff0a0a0a),
                                          backgroundImage: AssetImage("assets/images/alan.png"), ),
                 
                       ),
                 ),
                     SizedBox(height: 2.h,),
                     Text("jane",style: TextStyle(color:Colors.black54,fontSize: 18.sp ,fontWeight: FontWeight.w500),)
                      ],),
                                       SizedBox(width: 8.w,),


                       Column(children: [
                 FDottedLine(
                  color: Colors.black38,
  height: 70.0,
  width: 70.0,
  strokeWidth: 2.0,
  dottedLength: 10.0,
  space: 2.0,
  
  
  /// Set corner
  corner: FDottedLineCorner.all(50),
                     child: CircleAvatar(
                        radius: 4.h,
                        backgroundColor: Colors.white,
                        
                                          child: CircleAvatar(radius: 3.5.h,
                                          backgroundColor: Color(0xff0a0a0a),
                                          backgroundImage: AssetImage("assets/images/alan.png"), ),
                 
                       ),
                 ),
                     SizedBox(height: 2.h,),
                     Text("John",style: TextStyle(color:Colors.black54,fontSize: 18.sp ,fontWeight: FontWeight.w500),)
                      ],),
                                        SizedBox(width: 8.w,),


                       Column(children: [
                 FDottedLine(
                  color: Colors.black38,
  height: 70.0,
  width: 70.0,
  strokeWidth: 2.0,
  dottedLength: 10.0,
  space: 2.0,
  
  
  /// Set corner
  corner: FDottedLineCorner.all(50),
                     child: CircleAvatar(
                        radius: 4.h,
                        backgroundColor: Colors.white,
                        
                                          child: CircleAvatar(radius: 3.5.h,
                                          backgroundColor: Color(0xff0a0a0a),
                                          backgroundImage: AssetImage("assets/images/alan.png"), ),
                 
                       ),
                 ),
                     SizedBox(height: 2.h,),
                     Text("John",style: TextStyle(color:Colors.black54,fontSize: 18.sp ,fontWeight: FontWeight.w500),)
                      ],),
                                       SizedBox(width: 8.w,),

 Column(children: [
                 FDottedLine(
                  color: Colors.black38,
  height: 70.0,
  width: 70.0,
  strokeWidth: 2.0,
  dottedLength: 10.0,
  space: 2.0,
  
  
  /// Set corner
  corner: FDottedLineCorner.all(50),
                     child: CircleAvatar(
                        radius: 4.h,
                        backgroundColor: Colors.white,
                        
                                          child: CircleAvatar(radius: 3.5.h,
                                          backgroundColor: Color(0xff0a0a0a),
                                          backgroundImage: AssetImage("assets/images/alan.png"), ),
                 
                       ),
                 ),
                     SizedBox(height: 2.h,),
                     Text("John",style: TextStyle(color:Colors.black54,fontSize: 18.sp ,fontWeight: FontWeight.w500),)
                      ],),
                     
                 
                     ],),
                   ),
                 ),

        Expanded(child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                       SizedBox(height: 3.h,),
                   Text("Recently Released",style: TextStyle(color: Colors.black54,fontSize: 17.sp,fontWeight: FontWeight.w500),),
              Row(children: [
                   Text("Popular Games",style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w700),),
                   Spacer(),
                   Text("View all",style: TextStyle(color: Colors.black,fontSize: 17.sp,fontWeight: FontWeight.w500,decoration: TextDecoration.underline),),
              
              
              ],),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        diagonalContainer(),
                        SizedBox(width: 5.w,),
                        diagonalContainer2(),
                        SizedBox(width: 5.w,),

                        diagonalContainer(),
                        SizedBox(width: 5.w,),

                        diagonalContainer(),


                      ],
                    ),
                  ),
        SizedBox(height: 2.h,),

                  Row(children: [
                 Text("Recommended Games",style: TextStyle(color: Colors.black,fontSize: 19.sp,fontWeight: FontWeight.w700),),
                 Spacer(),
                 Text("View all",style: TextStyle(color: Colors.black,fontSize: 17.sp,fontWeight: FontWeight.w500,decoration: TextDecoration.underline),),
            
            
            ],),
            SizedBox(height: 2.h,),
            SingleChildScrollView
            (scrollDirection: Axis.horizontal,
              child: Expanded(
                child: Row(children: [
                         seconddRow(),
                        SizedBox(width: 5.w,),

                         seconddRow(),
                        SizedBox(width: 5.w,),

                         seconddRow(),
                        SizedBox(width: 5.w,),

                         seconddRow(),
                          
                ],),
              ),
            ),
            
           
            ],
          ),
        )),
       

                ],),
              ),
            )
            
        )
    );
  }
}