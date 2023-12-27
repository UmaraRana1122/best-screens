

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class CemolinaPudding extends StatelessWidget {
  const CemolinaPudding({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(

        body: Stack(
          children: [
        Container(
           // margin: EdgeInsets.only(bottom: 1.h),
           height: 47.h,
           width: 100.w,
           decoration: BoxDecoration(
               image: DecorationImage(
                   image: AssetImage("assets/images/91.png"),
                   fit: BoxFit.fill)),
         ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 100.w,
                height: 58.h,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    color: Color(0xffFFFFFF)),
               child: Padding(
                 padding: const EdgeInsets.all(23.0),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(width: 90.w,
                     child: 
                     Column(children: [
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/icons/arrro.png',height: 2.h,),
                        Container(
                          height: 3.5.h,
                          width: 25.w,
                          decoration: BoxDecoration(color: Color(0xffFF4539),borderRadius: BorderRadius.circular(20)),
                          child: Align(child: Text('50% Off',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16.sp,fontWeight: FontWeight.w500),)),
                        )
                      ],
                     ),
                     SizedBox(height: 2.h,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        
                          Text('Chilean Semolina \nPudding',style: TextStyle(color: Color(0xff000000),fontSize: 18.sp,fontWeight: FontWeight.w600),),
                          CircleAvatar(
                            radius: 1.7.h,
                            backgroundColor: Color(0xff07CD7C),
                            child: Image.asset('assets/icons/share9.png',height: 2.h,),
                          ),
                         
                      ],
                     ),
                              Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                         
                  ],
                 ),
                    Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/icons/star1.png',height: 2.h,),
                    Image.asset('assets/icons/star1.png',height: 2.h,),
                    
                    Image.asset('assets/icons/star1.png',height: 2.h,),
                    Image.asset('assets/icons/star1.png',height: 2.h,),
                    Image.asset('assets/icons/star2.png',height: 2.h,),
                    
                    SizedBox(width: 3.w,),
                      Text('4.8',style: TextStyle(color: Color(0xff000000),fontSize: 15.sp,fontWeight: FontWeight.w600),),
                      // SizedBox(width: 1.w,),
                      Spacer(),
                      Text('199\$',style: TextStyle(decoration: TextDecoration.lineThrough,color: Color(0xffBBBBBB),fontSize: 19.sp,fontWeight: FontWeight.w600),),
                      SizedBox(width: 1.w,),
                      Text('99\$',style: TextStyle(color: Color(0xff01B3E3),fontSize: 22.sp,fontWeight: FontWeight.w600),),
                    
                     
                    
                  ],
                 ),
                 SizedBox(height: 1.h,),
                      Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xff797979),fontSize: 14.5.sp,fontWeight: FontWeight.w300),),
                 SizedBox(height: 1.h,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Comments',style: TextStyle(color: Color(0xff000000),fontSize: 15.sp,fontWeight: FontWeight.w600),),
                        Container(
                          height: 3.5.h,
                          width: 25.w,
                          decoration: BoxDecoration(
                            border:Border.all(color: Color(0xff184064)),
                            borderRadius: BorderRadius.circular(20)),
                          child: Align(child: Text('Add review',style: TextStyle(color: Color(0xff184064),fontSize: 15.sp,fontWeight: FontWeight.w500),)),
                        )
                      ],
                     ),
                     ],)
                     ),
                    
                 
                     SizedBox(height: 1.h,),
  Expanded(child: SingleChildScrollView(
    child: Column(children: [
                     Column(
                     children: [
                           Row(children: [
                        CircleAvatar(
                         radius: 3.h,
                        backgroundImage: AssetImage('assets/images/person9.png'),
                        ),
                        SizedBox(width: 1.w,),
                        Container(
                         height: 10.h,
                         width: 75.w,
                         decoration: BoxDecoration(color: Color(0xffEDEDED),borderRadius: BorderRadius.circular(15)),
                         child: Column(children: [
                           Align(alignment: Alignment.topLeft,
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text('Arush Mantan',style: TextStyle(color: Color(0xff042F57),fontSize: 15.sp,fontWeight: FontWeight.w600),),
                             
                                          
                           )),
                           
                             Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard.',textAlign: TextAlign.center
                                          ,style: TextStyle(color: Color(0xff6D6D6D),fontSize: 15.sp,fontWeight: FontWeight.w400),),
                                          
                         ],)
                           
                        ),
                      ],),
                      SizedBox(height: 1.5.h,),
                       Row(children: [
                        CircleAvatar(
                         radius: 3.h,
                        backgroundImage: AssetImage('assets/images/person9.png'),
                        ),
                        SizedBox(width: 1.w,),
                        Container(
                         height: 10.h,
                         width: 75.w,
                         decoration: BoxDecoration(color: Color(0xffEDEDED),borderRadius: BorderRadius.circular(15)),
                         child: Column(children: [
                           Align(alignment: Alignment.topLeft,
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text('Arush Mantan',style: TextStyle(color: Color(0xff042F57),fontSize: 15.sp,fontWeight: FontWeight.w600),),
                             
                     
                           )),
                     
                           
                             Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard.',textAlign: TextAlign.center
                     ,style: TextStyle(color: Color(0xff6D6D6D),fontSize: 15.sp,fontWeight: FontWeight.w400),),
                     
                         ],)
                           
                        ),
                      ],),
                      SizedBox(height: 1.5.h,),
                     Row(children: [
                        CircleAvatar(
                         radius: 3.h,
                        backgroundImage: AssetImage('assets/images/person9.png'),
                        ),
                        SizedBox(width: 1.w,),
                        Container(
                         height: 10.h,
                         width: 75.w,
                         decoration: BoxDecoration(color: Color(0xffEDEDED),borderRadius: BorderRadius.circular(15)),
                         child: Column(children: [
                           Align(alignment: Alignment.topLeft,
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text('Arush Mantan',style: TextStyle(color: Color(0xff042F57),fontSize: 15.sp,fontWeight: FontWeight.w600),),
                             
                                          
                           )),
                           
                             Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard.',textAlign: TextAlign.center
                                          ,style: TextStyle(color: Color(0xff6D6D6D),fontSize: 15.sp,fontWeight: FontWeight.w400),),
                                          
                         ],)
                           
                        ),
                      ],),
                      SizedBox(height: 1.5.h,),
                       Row(children: [
                        CircleAvatar(
                         radius: 3.h,
                        backgroundImage: AssetImage('assets/images/person9.png'),
                        ),
                        SizedBox(width: 1.w,),
                        Container(
                         height: 10.h,
                         width: 75.w,
                         decoration: BoxDecoration(color: Color(0xffEDEDED),borderRadius: BorderRadius.circular(15)),
                         child: Column(children: [
                           Align(alignment: Alignment.topLeft,
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text('Arush Mantan',style: TextStyle(color: Color(0xff042F57),fontSize: 15.sp,fontWeight: FontWeight.w600),),
                             
                     
                           )),
                     
                           
                             Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard.',textAlign: TextAlign.center
                     ,style: TextStyle(color: Color(0xff6D6D6D),fontSize: 15.sp,fontWeight: FontWeight.w400),),
                     
                         ],)
                           
                        ),
                      ],)
                    
                     ],
                   ),
                   SizedBox(height: 2.h,),
                   Row(children: [
  
                      CircleAvatar(
                    radius: 3.h,
                    backgroundColor: Color(0xffFF4539),
                    child: Image.asset('assets/icons/heartt.png',height: 3.h,)
                   ),
                   SizedBox(width: 2.w,),
                   Container(
                    height: 7.h,
                    width: 70.w,
                    decoration: BoxDecoration(color: Color(0xffFEC842),borderRadius: BorderRadius.circular(40)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Image.asset('assets/icons/coppy.png',height: 3.h,),
                    SizedBox(width: 1.w,),
                    Text('CRISMAX50',style: TextStyle(color: Color(0xff042F57),fontSize: 17.sp,fontWeight: FontWeight.w600),)
                    
                    ],)
                   )
                   ],
    ),
                   
                      ],
                      
                   ),
  ),
                 
               ),
               
               
                   ] 
              ),
            ),
         )) ],
        )
    );
  }
}
 