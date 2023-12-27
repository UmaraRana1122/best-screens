import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/screens/flightbook.dart/task2.dart';

class BookFlight extends StatefulWidget {
  const BookFlight({super.key});

  @override
  State<BookFlight> createState() => _BookFlightState();
}

String country = 'Odessa,Ukrain';
// DateTime _selectedDate = DateTime.now();
TextEditingController dateInputController = TextEditingController();
TextEditingController dateInputController2 = TextEditingController();


class _BookFlightState extends State<BookFlight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              "assets/images/flight.png",
              height: 45.h,
            ),
            Text(
              "Book your flight",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 3.h,),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(

                        children: [
                         
                          Radio(
                              activeColor: Colors.black,
                              value: 'Odessa,Ukrain',
                              groupValue: country,
                              onChanged: ((value) {
                                setState(() {
                                  country = value.toString();
                                });
                              })),
                          
                          RichText(
                            text: TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 36),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Odessa, ',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600)),
                                TextSpan(
                                    text: 'Ukrain ',
                                    style: TextStyle(
                                      color: Color(0xff999d9f),
                                      fontSize: 20,
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 2.h,),
                    Row(
              children: [
                SizedBox(width: 3.w,),
                Radio(
                    activeColor: Colors.black,
                    value: 'Los Angles,',
                    groupValue: country,
                    onChanged: ((value) {
                      setState(() {
                        country = value.toString();
                      });
                    })),
                
                RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 36),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Los Angles, ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600)),
                      TextSpan(
                          text: 'USA ',
                          style: TextStyle(
                            color: Color(0xff999d9f),
                            fontSize: 20,
                          )),
                    ],
                  ),
                )
              ],
            ),


                  ],
                ),
                SizedBox(width: 8.w,),
                Column(children: [
 CircleAvatar(
   radius: 20,
   backgroundColor: Color(0xffe27d68),
   child: Image.asset(
     "assets/icons/reverse.png",
     height: 2.3.h,
     color: Colors.white,
   ),
 ),
                ],)
              ],
            ),
           
            SizedBox(height: 2.h,),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'Date',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1)),
                        suffixIcon: Icon(
                          Icons.calendar_month,
                          color: Color(0xff656a6c),
                        )),
                    controller: dateInputController,
                    readOnly: true,
                   onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2023),
                            lastDate: DateTime(2050));
                            
                  
                        if (pickedDate != null) {
                          
                                                  dateInputController.text = DateFormat('E d MMM', 'en_US').format(pickedDate);

                        }
                      }, ),
                  
                ),
                SizedBox(width: 1.w,),
                Expanded(
                  child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Back',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 1)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 1)),
                          suffixIcon: Icon(
                            Icons.calendar_month,
                          color: Color(0xff656a6c),

                          )),
                      controller: dateInputController2,
                      readOnly: true,
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2023),
                            lastDate: DateTime(2050));
                            
                  
                        if (pickedDate != null) {
                          
                                                  dateInputController2.text = DateFormat('E d MMM', 'en_US').format(pickedDate);

                        }
                      },
                    ),
                ),
              ],
            ),
            SizedBox(
              height: 9.h,
            ),
            InkWell
            (
              onTap: () {
                                    Get.to(SecondScreen());
                
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Color(0xff273238),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Text(
                    "Find a Route",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}