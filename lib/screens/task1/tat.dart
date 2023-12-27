import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UpdateProfile2 extends StatefulWidget {
  const UpdateProfile2({super.key});

  @override
  State<UpdateProfile2> createState() => _UpdateProfile2State();
}

class _UpdateProfile2State extends State<UpdateProfile2> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  TextEditingController passController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  TextEditingController addressController = TextEditingController();
  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();
  TextEditingController thirdController = TextEditingController();
  bool check = false;
  int currentindex = 0;
  bool isDateValid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Text(
                "Create an Account",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 1.6.h,
              ),
              Text(
                "Register your new account",
                style: TextStyle(
                    color: Color(0xff4B5768),
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                "Enter Your Name",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.5.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextField(
                cursorColor: Color(0xff4B5768),
                controller: name,
                onSubmitted: ((value) {
                  setState(() {
                    name.text = value;
                  });
                }),
                style: TextStyle(color: Color(0xffdcdcdd)),
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 18),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffD0D5DD),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff3E9892), width: .3.w),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    hintText: 'Name',
                    hintStyle: TextStyle(
                        color: Color(0xff928FA6),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400)),
              ),
              SizedBox(
                height: 2.2.h,
              ),
              Text(
                "Email Adress",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.5.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextField(
                cursorColor: Color(0xff4B5768),
                controller: name,
                onSubmitted: ((value) {
                  setState(() {
                    email.text = value;
                  });
                }),
                style: TextStyle(color: Color(0xffdcdcdd)),
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 18),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffD0D5DD),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff3E9892), width: .3.w),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    hintText: 'hello@example.com',
                    hintStyle: TextStyle(
                        color: Color(0xff928FA6),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400)),
              ),
              SizedBox(
                height: 2.2.h,
              ),
              Text(
                "Phone Number",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.5.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 1.h,
              ),
              IntlPhoneField(
                showDropdownIcon: true,
                flagsButtonPadding: const EdgeInsets.all(8),
                dropdownIconPosition: IconPosition.trailing,
                decoration: InputDecoration(
                    counterText: '',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 18),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffD0D5DD),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff3E9892), width: .3.w),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    hintText: 'hello@example.com',
                    hintStyle: TextStyle(
                        color: Color(0xff928FA6),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400)),
                initialCountryCode: 'US',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
              SizedBox(
                height: 2.2.h,
              ),
              Text(
                "Enter Date of Birth",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.5.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 27.w,
                    child: TextFormField(
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      cursorColor: Color(0xff4B5768),
                      style: TextStyle(color: Color(0xff4B5768)),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 18),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffD0D5DD),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff3E9892), width: .3.w),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          hintText: 'Date',
                          hintStyle: TextStyle(
                              color: Color(0xff928FA6),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                  SizedBox(
                    width: 27.w,
                    child: TextFormField(
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      cursorColor: Color(0xff4B5768),
                      style: TextStyle(color: Color(0xff4B5768)),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 18),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffD0D5DD),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff3E9892), width: .3.w),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          hintText: 'Month',
                          hintStyle: TextStyle(
                              color: Color(0xff928FA6),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                  SizedBox(
                    width: 27.w,
                    child: TextFormField(
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      cursorColor: Color(0xff4B5768),
                      style: TextStyle(color: Color(0xff4B5768)),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 18),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffD0D5DD),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff3E9892), width: .3.w),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          hintText: 'Year',
                          hintStyle: TextStyle(
                              color: Color(0xff928FA6),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.2.h,
              ),
              Text(
                "Application Date",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.5.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 1.h,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentindex = 0;
                  });
                },
                child: TextFormField(
                  controller: dateController,
                  // obscureText: true,
                  cursorColor: Color(0xff4B5768),
                  style: TextStyle(color: Color(0xff4B5768)),
                  inputFormatters: [
                    MaskTextInputFormatter(mask: "## | ## | ####")
                  ],
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return null;
                    }
                    final components = value.split("|");
                    if (components.length == 3) {
                      final day = int.tryParse(components[0]);
                      final month = int.tryParse(components[1]);
                      final year = int.tryParse(components[2]);
                      if (day != null && month != null && year != null) {
                        final date = DateTime(year, month, day);
                        if (date.year == year &&
                            date.month == month &&
                            date.day == day) {
                          return null;
                        }
                      }
                    }

                    return "Invalid date";
                  },

                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 20.0, horizontal: 18),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffD0D5DD),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff3E9892), width: .3.w),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      hintText: '22 | 12 | 2023',
                      hintStyle: TextStyle(
                          color: Color(0xff928FA6),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400),
                      suffixIcon: Image.asset(
                        "assets/icons/tick.png",
                      )),
                ),
              ),
              SizedBox(
                height: 2.5.h,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        check = !check;
                      });
                    },
                    child: CircleAvatar(
                      radius: 1.3.h,
                      backgroundColor: Colors.grey,
                      child: check
                          ? Image.asset("assets/icons/tick.png")
                          : SizedBox(),
                    ),
                  ),
                  SizedBox(width: 3.w),
                  Text(
                    'Agree term and conditions ',
                    style: TextStyle(
                        color: Color(0xff191D23),
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Align(
                child: Text.rich(TextSpan(
                    text:
                        "Welcome to app, where referrals turn into rewards. Let's get started!",
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff999DA3)),
                    children: <InlineSpan>[
                      WidgetSpan(child: SizedBox(width: 5)),
                      TextSpan(
                        text: 'Learn More',
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff3E9892),
                            decoration: TextDecoration.underline,
                            fontStyle: FontStyle.italic),
                      )
                    ])),
              ),
              SizedBox(
                height: 3.h,
              ),
              Align(
                child: Text.rich(TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(fontSize: 16.sp),
                    children: <InlineSpan>[
                      TextSpan(
                        text: 'Login Now',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff3E9892),
                        ),
                      )
                    ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
