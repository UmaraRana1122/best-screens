import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         bottom: PreferredSize(
          preferredSize: Size.fromHeight(10),
          child: Divider(
            thickness: 2,
            height: 0,
            color: Color(0xff411971),
          ),
        ),

  leading: Icon(Icons.arrow_back_ios_new),
  title: Align(alignment: Alignment.topLeft,
    child: Text('Payment',style: TextStyle(color: Color(0xffFFFFFF),fontWeight: FontWeight.w400),)),
  actions: [Padding(
    padding: const EdgeInsets.all(10.0),
    child: Icon(Icons.more_vert),
  )],
  flexibleSpace: Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.topRight,
        colors: <Color>[
          Color(0xff2b0258),
          Color(0xff2b0258),
        ],
      ),
    ),
  ),
),

      
body: Stack(
  children: [
Container(
              height: 100.h,
              width: 100.w,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff2b0258),
                    Color(0xff2b0258),
                  ],
                ),
              ),
            ),
Padding(
  padding: const EdgeInsets.all(18.0),
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Align(alignment: Alignment.center,
        child: CircleAvatar(
          radius: 6.h,
          backgroundColor: Color(0xff192f45),
          child: CircleAvatar(
            
            radius: 4.h,
            backgroundColor: Color(0xff14d75c),
            child: Image.asset('assets/icons/RIGHT.png',color: Color(0xffFFFFFF),height: 4.h,),
            
            
          ),
        ),
      ),
      SizedBox(height: 3.h,),
      Align(alignment: Alignment.center,
        child: Text('Checkout Successfully \nCompleted',
        textAlign: TextAlign.center,
        style: TextStyle(color: Color(0xffFFFFFF),fontSize: 18.sp,fontWeight: FontWeight.w500),)),
      SizedBox(height: 30.h,),
        Container(
  height: 7.h,
  width: 100.w,
  decoration: BoxDecoration(color: Color(0xff6b29b5),borderRadius: BorderRadius.circular(30)),
child: Align(alignment: Alignment.center,
  child: Text('Back to Checkout',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 17.sp,fontWeight: FontWeight.w500),)),
),
      
  
    ],
  ),
)
  ],
),
    );
  }
}