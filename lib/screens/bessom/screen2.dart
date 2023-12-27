
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/screens/bessom/widgets.dart';
class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}
double rate = 1.0;
double rate2 = 1.0;
class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xfff2bd3b),
            leading:
            Image.asset("assets/icons/left.png",color: Colors.white,height: 3.h,),
       
            title: 
             Text("Besom",style: TextStyle(color: Colors.white,fontSize: 21.sp,fontWeight: FontWeight.w600),),
            
            actions: [
                           Image.asset("assets/icons/cart.png",color: Colors.white,height: 4.5.h,),
       
            ],
          ),
                
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Column(children: [
         Stack(children: [
          Container(height: 48.h,),
          Container(height: 45.h,
          width: 100.w,
          decoration: BoxDecoration(color: Color(0xfff2bd3b),borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20))),
          
          child: Column(children: [
      
            Image.asset("assets/images/juice.png",height: 37.h,)
          ],),
          ),
                    
                    Positioned.fill(
                      bottom: 0,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 7.h,
                          width: 35.w,
                         decoration: BoxDecoration( color: Color(0xfff2bd3b),borderRadius: BorderRadius.circular(20),
                         border: Border.all(color:Colors.white,width: 2 ,),
                         boxShadow: [
                      BoxShadow(
                        color: Color(0xfff2bd3b),
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 50.0,
                        spreadRadius: 0.0,
                      ),
                      
          ] ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child:   Row(children: [
          Icon(Icons.remove,color: Colors.white,),
          SizedBox(width: 3.w,),
          Text("1",style: TextStyle(color: Colors.white,fontSize: 19.sp,fontWeight: FontWeight.w500),),
          SizedBox(width: 3.w,),
      
          Icon(Icons.add,color: Colors.white,),
        
        ],),
      ),
      
                        ),
                      ),
                    ),
                    // Align(
                    //   alignment: Alignment.topCenter,
                    //   child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: [
                    //           Image.asset("assets/icons/left.png",color: Colors.white,height: 3.h,),
                    //            Text("Besom",style: TextStyle(color: Colors.white,fontSize: 21.sp,fontWeight: FontWeight.w600),),
                    //             Image.asset("assets/icons/cart.png",color: Colors.white,height: 4.5.h,),
                      
                    //          ],),
                    // )    ,   
         ],),
         SizedBox(height: 3.h,),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 10),
           child: Column(
             children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                            alignment: Alignment.topLeft,
                            child: Text("Besom Orange Juice",style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w700),)),
                RatingBar.builder(
                                                          initialRating: 5,
                                                          minRating: 1,
                                                          itemSize: 2.5.h,
                                                          unratedColor: Color(0xffebeff1),
                                                          direction: Axis.horizontal,
                                                          allowHalfRating: true,
                                                          itemCount: 5,
                                                          itemPadding:
                                                              EdgeInsets.symmetric(
                                                                  horizontal: 0),
                                                          itemBuilder: (context, _) =>
                                                              Icon(
                                                            Icons.star,
                                                            color: Color(0xffffc008),
                                                            size: .3.h,
                                                          ),
                                                          onRatingUpdate: (rating) {
                                                            setState(() {
                                                              rate = rating;
                                                            });
                                                          },
                                                        ),
               ],),
               SizedBox(height: 2.h,),
               Text("Drinking Orange Juice is not only enhances healthy body also strenthen muscles.",style: TextStyle(color: Color(0xff4e4d5a),fontSize: 16.sp,),),
               SizedBox(height: 2.h,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Reviews",style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w700),),
                Text("See all",style: TextStyle(color: Color(0xffdc9caa),fontSize: 16.sp,fontWeight: FontWeight.w700,decoration: TextDecoration.underline),),
      
               ],),
               SizedBox(height: 2.h,),
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                 child: Row(children: [
               
                imageContainer("assets/images/person9.png"),
                SizedBox(width: 4.w,),
                imageContainer("assets/images/person9.png"),
                SizedBox(width: 4.w,),
      
                imageContainer("assets/images/person9.png"),
                SizedBox(width: 4.w,),
      
                imageContainer("assets/images/person9.png"),
                SizedBox(width: 4.w,),
      
       imageContainer("assets/images/person9.png"),
                SizedBox(width: 4.w,),
            Container(
              height: 7.3.h,
                        width: 16.w,
          decoration: DottedDecoration(
        shape: Shape.box,
        dash: <int>[8, 8],
        strokeWidth: 3,
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(Icons.add,size: 4.h,)
      ),
             
             
      
      
      
               
                                            ],),
               ),
               SizedBox(height: 2.h,),
               Row(children: [
                Text("\$",style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w700),),
                SizedBox(width: .3.w,),
      
                Text("25.99",style: TextStyle(color: Colors.black,fontSize: 22.sp,fontWeight: FontWeight.w800),
                ),
                Spacer(),
                
      Container(
        height: 7.h,
        width: 40.w,
        decoration: BoxDecoration(color: Color(0xfff2bd3b),borderRadius: BorderRadius.circular(17)),
        child: Align(child: Text("Buy Now",style: TextStyle(color: Colors.white,fontSize: 19.sp,fontWeight: FontWeight.w700),)),
      )
               ],),
             ],
           ),
         ),
           
      
        ],),
      ),
    );
  }
}