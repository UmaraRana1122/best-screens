import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class RoundedDiagonalPathClipper2 extends CustomClipper<Path> {
  double _getY(double x) {
    return x * 0.33;
  }

  @override
  Path getClip(Size size) {
    var roundnessFactor = 50.0;
    var equalization = 10.0;
    var path = Path();

    path.moveTo(0, roundnessFactor);
    path.lineTo(0, size.height - roundnessFactor);

    path.quadraticBezierTo(0, size.height, roundnessFactor, size.height);
    path.lineTo(size.width - roundnessFactor, size.height);

    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - roundnessFactor);

    path.lineTo(size.width, _getY(size.width) + roundnessFactor - equalization);
    path.quadraticBezierTo(
        size.width,
        _getY(size.width),
        size.width - roundnessFactor + equalization,
        _getY(size.width - roundnessFactor + equalization));

    path.lineTo(
        roundnessFactor + equalization, _getY(roundnessFactor + equalization));
    path.quadraticBezierTo(0, 0, 0, roundnessFactor + equalization);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

Widget foodItems2(
Color color,
 String nameImage,
 {
double imgWidth =45
 }
//  String height,
//  String width,
)

{
  
  return                       
   Padding(
     padding: const EdgeInsets.symmetric(vertical:14.0),
     child: Stack(
      alignment: Alignment.centerLeft,
                      children: [
                        Container(
                          width: 68.w,
                          height: 9.h ,
                            decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(20)),
                        ),
                            
                        
                        Align(alignment: Alignment.centerRight,
                
                          child: Container(
                            height: 12.h,
                            width: 45.w,
                            decoration: BoxDecoration(color: Colors.transparent,borderRadius: BorderRadius.circular(20)),
                            child: OverflowBox(
                                alignment: Alignment.center,
                                minWidth: 0.0,
                                minHeight: 0.0,
                                maxWidth: imgWidth.w,
                                maxHeight: 100.h,
                                child: Image.asset(
                                  nameImage, 
                                  fit: BoxFit.cover,
                                ),
                              ),
                            
                          ),
                        ),
                       
                        
                     
                        
                      ],
                     ),
   );
          
} 
Widget diagonalContainer(){
  return Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                          Container(height: 24.h,
                          width: 46.w,
                          ),


                     ClipPath(
                              clipper: RoundedDiagonalPathClipper2(),
                              child: Container(
                                height: 25.h,
                                width: 46.w,
                                decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        color: Color(0xff63eaed),
                                ),
                                
                                child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 20),
                     child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 1.h),
                        Icon(Icons.favorite_border,color: Colors.white,size: 3.h),
                                                SizedBox(height: 11.h),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                                                 Text("Jetpack Joy",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w700),),
                                                 Row(children: [
                                                  Column(children: [
                   Text("Action packed \ndesi quiz Games",style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w400),),

                                                  ],),
                                                  SizedBox(width: 3.w,),
                                                  Container(
                                                    height: 3.h,
                                                    width: 8.w,
                                                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)),
                                                    child: Align(child: Text("4.9",style: TextStyle(color: Color(0xff63eaed),fontSize: 15.sp),)),
                                                  )
                                                 ],)

                            ],
                          ),
                        )
                      ],
                     ),
                                )
                              ),
                            ),
                     Positioned.fill(
                  
                       child: Align(
                        alignment: Alignment.topRight,
                         child: Image.asset("assets/images/player.png",height: 18.h,fit: BoxFit.fill,),
                       ),
                     ),
                    
                        ],);
}
Widget diagonalContainer2(){
  return Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                          Container(height: 24.h,
                          width: 46.w,
                          ),


                     ClipPath(
                              clipper: RoundedDiagonalPathClipper2(),
                              child: Container(
                                height: 19.5.h,
                                width: 46.w,
                                decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        color: Color(0xffeba60c),
                                ),
                                
                                child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 11,vertical: 20),
                     child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 1.h),
                        Icon(Icons.favorite,color: Colors.white,size: 3.h),
                                                SizedBox(height: 6.h),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                                                 Column(children: [
                                                 Text("X Fighter",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w700),),
                                                 SizedBox(height: 1.h,),

                                                  Text("Battle Royale",style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                                                 
                                                 ],),
                                                  SizedBox(width: 4.w,),
                                                  Container(
                                                    height: 4.h,
                                                    width: 8.4.w,
                                                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(9)),
                                                    child: Align(child: Text("4.9",style: TextStyle(color: Color(0xffeba60c),fontSize: 15.sp),)),
                                                  )

                            ],
                          ),
                        )
                      ],
                     ),
                                )
                              ),
                            ),
                     Positioned.fill(
                  
                       child: Align(
                        alignment: Alignment.topRight,
                         child: Image.asset("assets/images/player.png",height: 16.h,fit: BoxFit.fill,),
                       ),
                     ),
                    
                        ],);
}
Widget seconddRow(){
  return  Stack(children: [
               ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: ShaderMask(
                      
                       shaderCallback: (bounds) {
                      return LinearGradient(
                        stops: [0.0, 0.50,],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black,
                            Colors.white,
                          ]
                      ).createShader(bounds);
                             
                        
                          }  ,
                      child: Container(
                        height: 25.h,
                        width: 45.w,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                                            
                      ),
                      
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.asset(
                            "assets/images/rename.png",
                            height: 6.8.h,
                            width: 5.h,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
Text("Road Fight",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w600),),
Text("Shooting Cars",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w600),),

                    ],),
                  ),
                  
            ],);
}