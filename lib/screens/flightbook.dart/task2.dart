import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/screens/flightbook.dart/task1.dart';
import 'package:task1/screens/flightbook.dart/widgets.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}


final List<String> Price = [
  "100\$",
  "150\$",
  "50\$",

];
int index = 0;
bool isSelect = true;
String? selectedValue;
List<String> Tabs = [
  "Train",
  "Bus",
  "Plane",
];

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xff009788),
            leading: IconButton(
              icon: InkWell(
                onTap: () {
                   Get.to(BookFlight());
                },
                child: Icon(Icons.arrow_back_ios_new_rounded)),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              )
            ],
          ),
          body: Stack(children: [
            Container(
                height: 50.h,
                decoration: BoxDecoration(
                  color: Color(0xff009788),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                )),
            Container(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(children: [
                      Text(
                        "Odessa",
                        style: TextStyle(
                            color: Color(0xffcafdfc),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w200),
                      ),
                      Spacer(),
                      Text(
                        "Fr 6 Mar",
                        style: TextStyle(
                            color: Color(0xffcafdfc),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w300),
                      ),
                    ]),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Los Angeles",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        Text(
                          "Sort by:",
                          style: TextStyle(
                              color: Color(0xffcafdfc),
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                            height: 3.8.h,
                            // width: 30.w,
                            decoration: BoxDecoration(
                                color: Color(0xff1b9f94),
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: DropdownButtonHideUnderline(
                          child: DropdownButton2<String>(
                            iconStyleData: IconStyleData(icon: Icon(Icons.arrow_drop_down_outlined,color: Colors.white,size: 2.h,),) ,
                        isExpanded: true,
                        items: Price
                            .map((String item) => DropdownMenuItem<String>(
                               value: item,
                               child: Text(
                                 item,
                                 style: const TextStyle(
                                   fontSize: 12,
                                 ),
                               ),
                                ))
                            .toList(),
                        value: selectedValue,
                        onChanged: (String? value) {
                         
                        },
                        hint: Text("Price",
                        style: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          color: Colors.white
                        ),
                        ),
                        buttonStyleData:  ButtonStyleData(
                          padding: EdgeInsets.symmetric(horizontal: 3),
                          width: 14.w,

                        ),
                        menuItemStyleData: const MenuItemStyleData(
                          height: 40,

                        ),
                        dropdownStyleData: DropdownStyleData(
                          maxHeight: 15.h,
                          width: 30.w,
                          offset: Offset(-50,0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                             color: Color(0xffcafdfc),
                          ),
                        ),
                      )),
                            )),
                        Spacer(),
                        Container(
                            height: 4.5.h,
                            width: 4.5.h,
                            decoration: BoxDecoration(
                                                                color: Color(0xff1b9f94),

                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Row(
                                children: [
                                  // Badge(
                                  //     badgeContent: Text('1'),
                                  //     child: Icon(
                                  //       Icons.person_outlined,
                                  //       color: Colors.white,
                                  //     ),
                                  //     badgeStyle: BadgeStyle(
                                  //         badgeColor: Color(0xfffc7862))),
                                ],
                              ),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 4.5.h,
                            width: 4.5.h,
                            decoration: BoxDecoration(
                                                                color: Color(0xff1b9f94),

                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: Icon(
                              Icons.settings_input_composite_sharp,
                              color: Colors.white,
                              size: 18,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Container(
                        height: 45.0,
                        width: 328,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.4),
                          ),
                        ),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  index = 0;
                                });
                              },
                              child: Container(
                                width: 105,
                                height: MediaQuery.of(context).size.height,
                                decoration: BoxDecoration(
                                  color: index == 0
                                      ? Colors.white
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 12),
                                  child: Text(
                                    "Train",
                                    style: TextStyle(
                                        color: Color(0xff80cbc4),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  index = 1;
                                });
                              },
                              child: Container(
                                width: 105,
                                height: MediaQuery.of(context).size.height,
                                decoration: BoxDecoration(
                                  color: index == 1
                                      ? Colors.white
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 12),
                                  child: Text(
                                    "Bus",
                                    style: TextStyle(
                                        color: Color(0xff80cbc4),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  index = 2;
                                });
                              },
                              child: Container(
                                width: 105,
                                height: MediaQuery.of(context).size.height,
                                decoration: BoxDecoration(
                                  color: index == 2
                                      ? Colors.white
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 12),
                                  child: Text(
                                    "Plane",
                                    style: TextStyle(
                                        color: Color(0xff80cbc4),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                  
                   
                
                    // Stack(
                    //   children: <Widget>[
                    //     Padding(
                    //       padding: const EdgeInsets.only(
                    //           left: 20.0, right: 20.0, bottom: 20.0),
                    //       child: Stack(
                    //         children: <Widget>[
                    //           Container(
                    //             decoration: BoxDecoration(
                    //                 borderRadius: BorderRadius.circular(50.0),
                    //                 color: Colors.white,
                    //                 boxShadow: [
                    //                   BoxShadow(
                    //                     color: Colors.grey.withOpacity(0.4),
                    //                     spreadRadius: 1,
                    //                     blurRadius: 10,
                    //                     offset: Offset(0, 1),
                    //                   ),
                    //                 ]),
                    //             child: Padding(
                    //               padding: const EdgeInsets.only(
                    //                   top: 30.0,
                    //                   bottom: 30.0,
                    //                   left: 35.0,
                    //                   right: 35.0),
                    //               child: Column(
                    //                 children: <Widget>[
                    //                   // Positioned(
                    //                   //   top: 0,
                    //                   //   right: 0,
                    //                   //   child: Container(
                    //                   //     height: 70,
                    //                   //     width: 100,
                    //                   //     decoration: BoxDecoration(
                    //                   //       color: Color(0xfffd7468),
                    //                   //       borderRadius: BorderRadius.only(
                    //                   //           bottomLeft:
                    //                   //               Radius.circular(50.0),
                    //                   //           topRight:
                    //                   //               Radius.circular(50.0)),
                    //                   //     ),
                    //                   //   ),
                    //                   // ),
                    //                   Row(
                    //                     children: [
                    //                       Text(
                    //                         "\$",
                    //                         style: TextStyle(
                    //                             color: Color(0xfffd7468),
                    //                             fontSize: 22,
                    //                             fontWeight: FontWeight.w700),
                    //                       ),
                    //                       Text(
                    //                         "634",
                    //                         style: TextStyle(
                    //                             color: Color(0xfffd7468),
                    //                             fontSize: 22,
                    //                             fontWeight: FontWeight.w700),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                   SizedBox(height: 15.0),
                    //                   Row(
                    //                     mainAxisAlignment:
                    //                         MainAxisAlignment.spaceBetween,
                    //                     children: <Widget>[
                    //                       Text(
                    //                         "Fr 6 Mar.",
                    //                         style:
                    //                             TextStyle(color: Colors.grey),
                    //                       ),
                    //                       Text(
                    //                         "Fr 6 Mar.",
                    //                         style:
                    //                             TextStyle(color: Colors.grey),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                   SizedBox(height: 10.0),
                    //                   Row(
                    //                     mainAxisAlignment:
                    //                         MainAxisAlignment.spaceBetween,
                    //                     children: <Widget>[
                    //                       Text(
                    //                         "ODS",
                    //                         style: TextStyle(
                    //                             color: Colors.black,
                    //                             fontSize: 22,
                    //                             fontWeight: FontWeight.w700),
                    //                       ),
                    //                       Text(
                    //                         "CA(LAX)",
                    //                         style: TextStyle(
                    //                             color: Colors.black,
                    //                             fontSize: 22,
                    //                             fontWeight: FontWeight.w700),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                   Row(
                    //                     mainAxisAlignment:
                    //                         MainAxisAlignment.spaceBetween,
                    //                     children: <Widget>[
                    //                       Text(
                    //                         "2:55 pm",
                    //                         style: TextStyle(
                    //                             color: Colors.black87),
                    //                       ),
                    //                       Text(
                    //                         "8:20 pm",
                    //                         style: TextStyle(
                    //                             color: Colors.black87),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                   SizedBox(height: 20.0),
                    //                   Container(
                    //                     child: Row(
                    //                       children: <Widget>[
                    //                         CircleAvatar(
                    //                           radius: 9,
                    //                           backgroundColor:
                    //                               Color(0xff99a4ab),
                    //                         ),
                    //                         Text('- - - - - - - - - - - - - -'),
                    //                         Icon(Icons.flight_takeoff_sharp,
                    //                             color: Colors.grey),
                    //                         Text('- - - - - - - - - - - - - -'),
                    //                         CircleAvatar(
                    //                           radius: 9,
                    //                           backgroundColor:
                    //                               Color(0xff99a4ab),
                    //                           child: CircleAvatar(
                    //                             radius: 4,
                    //                             backgroundColor: Colors.white,
                    //                           ),
                    //                         ),
                    //                       ],
                    //                     ),
                    //                   ),
                    //                   SizedBox(height: 20.0),
                    //                   Row(
                    //                     mainAxisAlignment:
                    //                         MainAxisAlignment.center,
                    //                     children: <Widget>[
                    //                       Text(
                    //                         "13h25m",
                    //                         style: TextStyle(
                    //                             color: Colors.black38),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                 ],
                    //               ),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ]),
            )),
            Positioned.fill(child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 60.h,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                          containerWidget("\$", "634", "CA(LAX)", Color(0xfff97b62), "Top",Color(0xffFFFFFF),index: 1),
                      containerWidget("\$", "1120", "CA(ONT)", Color(0xffebeef3), "Med",Color(0xff80868b),index: 0),
                      containerWidget("\$", "1120", "CA(ONT)", Color(0xffebeef3), "Med",Color(0xff80868b),index: 1),


                    ],
                    
                  ),
                ),
              ),
            ))
          ])),
    );
  }
}

class MySeparator extends StatelessWidget {
  const MySeparator({Key? key, this.height = 1, this.color = Colors.black})
      : super(key: key);
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 6.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}

class MySeparator2 extends StatelessWidget {
  const MySeparator2({Key? key, this.height = 1, this.color = Colors.black})
      : super(key: key);
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 6.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}