import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class MyPlan extends StatelessWidget {
  const MyPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            
            Row(
crossAxisAlignment: CrossAxisAlignment.start, 
mainAxisAlignment: MainAxisAlignment.spaceBetween,             
              children: [
                Image.asset('assets/icons/arr1.png',height: 2.h,),
                Text('Choose your plan',style: TextStyle(color: Color(0xff222222),
                fontSize: 16.sp,fontWeight:FontWeight.bold ),),
              ],
            ),
            SizedBox(height: 3.h,),
            Text('Thank you for registering as an establishment.\nPlease choose your plan.',style: TextStyle(
              color: Color(0xff797979),fontSize: 16.sp,fontWeight: FontWeight.w500),),
              SizedBox(height: 2.h,),
              Container(height: 22.h,
              width: 85.w,
              decoration: BoxDecoration(border: Border.all(color: Color(0xff868686),
              ),borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Align(alignment: Alignment.topLeft,
                      child: Text('Free monthly plan',style: TextStyle(color: Color(0xff5571FC),fontSize: 17.sp,fontWeight: FontWeight.w800),)),
                      SizedBox(height: 1.h,),
                      Text('Add a detailed and searchable profile of your restaurant,bar, club or venue. Post up to 8 bites of 180 characternews items a month, including a photo or video. Bites appear in feeds of all nearby users.',
                      style: TextStyle(color: Color(0xff797979),fontSize: 15.5.sp,fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                      
                      ),
                      SizedBox(height: 1.h,),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset('assets/icons/arr4.png',height: 2.h,)),
                      
                  ],
                ),
              ),
              ),
              SizedBox(height: 2.h,),

              Container(height: 22.h,
              width: 85.w,
              decoration: BoxDecoration(border: Border.all(color: Color(0xffE3BA22),
              ),borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Gold plan',style: TextStyle(color: Color(0xffE3BA22),fontSize: 17.sp,fontWeight: FontWeight.w800),),
                        Text('\$5.99 \\ month',style: TextStyle(color: Color(0xff000000),fontSize: 17.sp,fontWeight: FontWeight.w800),
                        ),
                      ],
                     
                    ),
                    
                      SizedBox(height: 1.5.h,),
                      Text('For those establishments that want more. All of the above plus unlimited posting bites. Gold Plan establishments will also be given first priority for any limited offers or services from our partners.',
                      style: TextStyle(color: Color(0xff797979),fontSize: 15.5.sp,fontWeight: FontWeight.w500),

                      textAlign: TextAlign.center,
                      
                      ),
                      SizedBox(height: 1.h,),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset('assets/icons/arr3.png',height: 2.h,)),
                      
                  ],
                ),
              ),
              ),
              SizedBox(height: 2.h,),
              Container(height: 17.h,
              width: 85.w,
              decoration: BoxDecoration(border: Border.all(color: Color(0xff000000),
              ),borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Promotional bites',style: TextStyle(color: Color(0xff3E3E3E),fontSize: 17.sp,fontWeight: FontWeight.w800),),
                         Text('1\$/ bite',style: TextStyle(color: Color(0xff000000),fontSize: 17.sp,fontWeight: FontWeight.w800),),
                      ],
                    ),
                    
                      SizedBox(height: 1.5.h,),
                      Text('For only 1 dollar your news bite will be boosted to within the top 5 positions in local user feeds, for 3 days. You will be prompted to boost when posting bites.',

                      style: TextStyle(color: Color(0xff000000),fontSize: 15.5.sp,fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                      
                      ),
                      
                      
                  ],
                ),
              ),
              ),
              
          ],
        ),
      ),),
    );
  }
}