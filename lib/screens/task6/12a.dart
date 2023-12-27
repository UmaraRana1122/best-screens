import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/widgets/customButton.dart';
import 'package:task1/widgets/regionWidget.dart';

class MyTask61 extends StatefulWidget {
  const MyTask61({super.key});

  @override
  State<MyTask61> createState() => _MyTask61State();
}

class _MyTask61State extends State<MyTask61> {
  int cureent = 0;
  int cureent1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffefeff),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/icons/arr1.png',
                  height: 2.5.h,
                ),
                Text(
                  'Edit Profile',
                  style: TextStyle(
                      color: Color(0xff222222),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    isDismissible: true,
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    context: context,
                    builder: ((context) => DraggableScrollableSheet(
                        maxChildSize: 0.96,
                        minChildSize: 0.4,
                        initialChildSize: 0.55,
                        builder: (context, ScrollController scroll) {
                          return DefaultTabController(
                              length: 3,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  child: Container(
                                    color: Colors.white,
                                    child: StatefulBuilder(
                                        builder: (context, innerstate) {
                                      return Padding(
                                        padding: const EdgeInsets.all(14.0),
                                        child: ListView(
                                            controller: scroll,
                                            children: [
                                              TabBar(
                                                onTap: (value) {
                                                  innerstate(
                                                    () {
                                                      cureent = value;
                                                      log(cureent.toString());
                                                    },
                                                  );
                                                },
                                                labelPadding: EdgeInsets.zero,
                                                tabs: [
                                                  Tab(text: 'Region'),
                                                  Tab(text: 'Food type'),
                                                  Tab(text: 'Resturent type'),
                                                ],
                                                indicatorColor: Color(0xff002065),
                                                labelStyle: TextStyle(
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.bold),
                                                unselectedLabelStyle: TextStyle(
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.w300),
                                                labelColor: Color(0xff002065),
                                                unselectedLabelColor:
                                                    Color(0xff2B2B2B),
                                              ),
                                              SizedBox(
                                                height: 3.h,
                                              ),
                                              cureent == 0
                                                  ?
                                                   Column(
                                                      children: List.generate(8, (index) => InkWell(
                                                        onTap: (){
                                                          innerstate(() {
                                                            cureent1=index;
                                                            // log(cureent1.toString());
                                                          });
                                                        },
                                                        child: regionWidget(
                                                          isSelect: cureent1==index?true:false
                                                        ))),
                                                      )
                                            
                                            :CircleAvatar()]),
                                      );
                                            // Expanded(
                                            //   child: TabBarView(children: [
                                            //   Container(
                                            //     height: 10.h,
                                            //     width: 70.w,
                                            //     decoration: BoxDecoration(color: Colors.red),
                                            //   ),

                                            //   ],

                                            //   ),
                                            // )
                                          
                                    }),
                                  )));
                        })));
              },
              child: customSelectButton(
                context,
                isIcon: true,
                isBorder: true,
              ),

              //    textFieldCustom(
              //       Colors.black,
              //       12,
              //     ),
              //        textFieldCustom(
              //       Colors.black,
              //       12,
              //       hint: "User Name"
              //     ),
              //      textFieldCustom(
              //       Colors.black,
              //       12,
              //       hint: "City Name"
              //     ),

              //     textFieldCustom(
              //       Colors.black,
              //       12,
              //     ),

//               Align(
//                   alignment: Alignment.topLeft,
//                   child: Text(
//                     'Establishment - Add/Edit Profile',
//                     style: TextStyle(
//                         color: Color(0xff222222),
//                         fontSize: 16.5.sp,
//                         fontWeight: FontWeight.w600),
//                   )),
//               SizedBox(
//                 height: 2.h,
//               ),
//               Container(
//                 height: 20.h,
//                 width: 100.w,
//                 decoration: BoxDecoration(
//                   color: Color(0xffEBEBEB),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(12),
//                   child: Container(
//                     height: 3.h,
//                     width: 3.w,
//                     decoration: BoxDecoration(color: Colors.transparent),
//                     // child: Image.asset('assets/icons/+.png',height: 3.h,width: 1.w,
//                     // ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 2.h,
//               ),
//               Container(
//                 height: 30.h,
//                 width: 100.w,
//                 decoration: BoxDecoration(
//                   color: Color(0xffEAECFF),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Upload images',
//                             style: TextStyle(
//                                 color: Color(0xff002065),
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: 16.sp),
//                           ),
//                           Text(
//                             'Minimum 1 image',
//                             style: TextStyle(
//                                 color: Color(0xff8E8E8E),
//                                 fontWeight: FontWeight.w400,
//                                 fontSize: 16.sp),
//                           ),
//                         ],
//                       ),
//                       Container(
//                         height: 20.h,
//                         child: GridView.count(
//                           crossAxisCount: 4,
//                           mainAxisSpacing: 10,
//                           crossAxisSpacing: 10,
//                           shrinkWrap: false,
//                           children: List.generate(8, (index) {
//                             return Container(
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(12)),
//                                 child: Icon(Icons.add));
//                           }),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
// //              Row(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Text('Social Media Links',style: TextStyle(color: Color(0xff002065),fontWeight: FontWeight.w600,fontSize: 16.sp),),
// // SizedBox(width: 15.w,),
// //                 Text('Optional',style: TextStyle(color: Color(0xff8E8E8E),fontWeight: FontWeight.w600,fontSize: 16.sp),)
// //               ],
// //              )
              // InkWell(
              //   onTap: () {
              //     showModalBottomSheet(
              //       backgroundColor: Colors.transparent,
              //       // elevation: 0,
              //       isDismissible: true,
              //       isScrollControlled: true,
              //       context: context,
              //       builder:(context) => DraggableScrollableSheet(initialChildSize: 0.5,
              // maxChildSize:0.96,
              // minChildSize: 0.4,

              //
              //              return  Container(
              //
              //
              //              controller: scroll,

              //
              //
              //
              //
              //
              //   child: CircleAvatar(
              //     radius: 10.h,
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Icon(Icons.add),
              //         SizedBox(
              //           height: 1.h,
              //         ),
              //         Text('Upload Profile image')
              //       ],
              //     ),

              //     //
              //   ),
              // ),
            )
          ]),
        ),
      )),
    );
  }
}
