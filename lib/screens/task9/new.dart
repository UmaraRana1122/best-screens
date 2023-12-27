import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/screens/task9/food.dart';
import 'package:task1/screens/task9/pudding.dart';
class Burger2 extends StatefulWidget {

   const Burger2({super.key,});

  @override
  State<Burger2> createState() => _Burger2State();
}
int index=0;


class _Burger2State extends State<Burger2> {
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
      FocusManager.instance.primaryFocus!.unfocus();
        
      },
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: index==0?Pro7():index==1?CemolinaPudding():Column(children: [
          Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: Text(',',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 19.sp,fontWeight: FontWeight.w700),),
                      ),
                      Align(alignment: Alignment.centerRight,
              
                        child: Container(
                          height: 12.h,
                          width: 50.w,
                          decoration: BoxDecoration(color: Colors.transparent,borderRadius: BorderRadius.circular(20)),
                          child: OverflowBox(
                              alignment: Alignment.bottomRight,
                              minWidth: 0.0,
                              minHeight: 0.0,
                              maxWidth: 36.w,
                              maxHeight: 100.h,
                              child: Image.asset(
                                'assets/images/burger.png', 
                                fit: BoxFit.cover,
                              ),
                            ),
                          
                        ),
                      ),
                     
                      
                   
                      
                    ],
                   ),
                   SizedBox(height: 2.h,),
                    Stack(
                    children: [
                      Container(
                        height: 9.h,
                          width: 75.w,
                          decoration: BoxDecoration(color: Color(0xff07CD7C),borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(22.0),
                            child: Text('Desserts',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 19.sp,fontWeight: FontWeight.w700),),
                          ),
                      ),
                      Align(alignment: Alignment.centerRight,
              
                        child: Container(
                          height: 14.h,
                          width: 40.w,
                          decoration: BoxDecoration(color: Colors.transparent,borderRadius: BorderRadius.circular(20)),
                          child: OverflowBox(
                              alignment: Alignment.bottomRight,
                              minWidth: 0.0,
                              minHeight: 0.0,
                              maxWidth: 40.w,
                              maxHeight: 90.h,
                              child: Image.asset(
                                'assets/images/dessert.png', 
                                fit: BoxFit.cover,
                              ),
                            ),
                          
                        ),
                      ),
                     
                      
                   
                      
                    ],
                   ),
                   Stack(
                    children: [
                      Container(
                        height: 9.h,
                          width: 75.w,
                          decoration: BoxDecoration(color: Color(0xffFF4539),borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(22.0),
                            child: Text('Seafood',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 19.sp,fontWeight: FontWeight.w700),),
                          ),
                      ),
                      Align(alignment: Alignment.centerRight,
              
                        child: Container(
                          height: 10.h,
                          width: 53.w,
                          decoration: BoxDecoration(color: Colors.transparent,borderRadius: BorderRadius.circular(20)),
                          child: OverflowBox(
                              alignment: Alignment.bottomRight,
                              minWidth: 0.0,
                              minHeight: 0.0,
                              maxWidth: 41.w,
                              maxHeight: 100.h,
                              child: Image.asset(
                                'assets/images/seafood.png', 
                                fit: BoxFit.cover,
                              ),
                            ),
                          
                        ),
                      ),
                     
                      
                   
                      
                    ],
                   ),
                   
        ],)
      
      ),
    );
  }
}