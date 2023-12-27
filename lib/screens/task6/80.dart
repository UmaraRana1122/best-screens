import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyTask6 extends StatefulWidget {
  const MyTask6({super.key});

  @override
  State<MyTask6> createState() => _MyTask6State();
}

bool _isUserAuthorized = false;

class _MyTask6State extends State<MyTask6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffefeff),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/icons/arr1.png',
                    height: 2.5.h,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(
                        color: Color(0xff222222),
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Stack(
                children: [
                  Container(
                    height: 65.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: Color(0xffEAECFF),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Location',
                              style: TextStyle(
                                  color: Color(0xff002065),
                                  fontSize: 17.5.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: .5.h,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Use phone location',
                                    style: TextStyle(
                                        color: Color(0xff002065),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Transform.scale(
                                    scale: 1.45,
                                    child: Switch(
                                      value: _isUserAuthorized,
                                      onChanged: (value) {
                                        setState(() {
                                          _isUserAuthorized = value;
                                        });
                                      },
                                      activeTrackColor: Color(0xffFFFFFF),
                                      activeColor: Color(0xff002065),
                                    ),
                                  ),
                                ]),
                            Row(
                              children: [
                                Text(
                                  'Set location manually',
                                  style: TextStyle(
                                      color: Color(0xff002065),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            TextField(
                              style: TextStyle(color: Color(0xffdcdcdd)),
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xffFFFFFF),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffFFFFFF),
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffFFFFFF),
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  hintText: 'Street',
                                  hintStyle: TextStyle(
                                      color: Color(0xff8e8e8e),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400)),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            TextField(
                              style: TextStyle(color: Color(0xffdcdcdd)),
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xffFFFFFF),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffFFFFFF),
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffFFFFFF),
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  hintText: 'City',
                                  hintStyle: TextStyle(
                                      color: Color(0xff8e8e8e),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400)),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            TextField(
                              style: TextStyle(color: Color(0xffdcdcdd)),
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xffFFFFFF),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffFFFFFF),
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffFFFFFF),
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  hintText: 'State/Province',
                                  hintStyle: TextStyle(
                                      color: Color(0xff8e8e8e),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400)),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            TextField(
                              style: TextStyle(color: Color(0xffdcdcdd)),
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xffFFFFFF),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffFFFFFF),
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffFFFFFF),
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  hintText: 'Country',
                                  hintStyle: TextStyle(
                                      color: Color(0xff8e8e8e),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400)),
                            ),
                            SizedBox(
                              height: 2.5.h,
                            ),
                            Container(
                              height: 7.h,
                              width: 100.h,
                              decoration: BoxDecoration(
                                  color: Color(0xff002065),
                                  borderRadius: BorderRadius.circular(18)),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w600),
                                  )),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Container(
                              height: 7.h,
                              width: 100.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  border: Border.all(color: Color(0xff002065))),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Reset',
                                    style: TextStyle(
                                        color: Color(0xff002065),
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w600),
                                  )),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              Container(
                  height: 30.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: Color(0xffEAECFF),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Notifications',
                            style: TextStyle(
                                color: Color(0xff002065),
                                fontSize: 16.5.sp,
                                fontWeight: FontWeight.w700)),
                        Row(
                          children: [
                            Text(
                              'Establishments you follow',
                              style: TextStyle(
                                  color: Color(0xff434343),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            Spacer(),
                            Transform.scale(
                              scale: 1.45,
                              child: Switch(
                                value: _isUserAuthorized,
                                onChanged: (value) {
                                  setState(() {
                                    _isUserAuthorized = value;
                                  });
                                },
                                activeTrackColor: Color(0xffFFFFFF),
                                activeColor: Color(0xff002065),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'This week! (Tuesday)',
                              style: TextStyle(
                                  color: Color(0xff434343),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            Spacer(),
                            Transform.scale(
                              scale: 1.45,
                              child: Switch(
                                value: _isUserAuthorized,
                                onChanged: (value) {
                                  setState(() {
                                    _isUserAuthorized = value;
                                  });
                                },
                                activeTrackColor: Color(0xffFFFFFF),
                                activeColor: Color(0xff002065),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'This weekend! (Friday)',
                              style: TextStyle(
                                  color: Color(0xff434343),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            Spacer(),
                            Transform.scale(
                              scale: 1.45,
                              child: Switch(
                                value: _isUserAuthorized,
                                onChanged: (value) {
                                  setState(() {
                                    _isUserAuthorized = value;
                                  });
                                },
                                activeTrackColor: Color(0xffFFFFFF),
                                activeColor: Color(0xff002065),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Company messages',
                              style: TextStyle(
                                  color: Color(0xff434343),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            Spacer(),
                            Transform.scale(
                              scale: 1.45,
                              child: Switch(
                                value: _isUserAuthorized,
                                onChanged: (value) {
                                  setState(() {
                                    _isUserAuthorized = value;
                                  });
                                },
                                activeTrackColor: Color(0xffFFFFFF),
                                activeColor: Color(0xff002065),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Account',
                    style: TextStyle(
                        color: Color(0xff222222),
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Stack(children: [
                Container(
                  margin: EdgeInsets.only(top: 48),
                  height: 10.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      child: CircleAvatar(
                        radius: 11.h,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 10.h,
                          backgroundImage: AssetImage('assets/images/boy.png'),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/icons/pen.png'),
                              radius: 3.h,
                            ),
                          ),
                        ),
                      ),
                    )),
              ]),
              SizedBox(height: 2.h,),
              Container(
                height: 33.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: Color(0xffEAECFF),
                      borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/icons/one.png',height: 3.h,),
                                SizedBox(width: 3.w,),
                                Column(
                                  children: [
                                    Text('Name',style: TextStyle(color: Color(0xff002065),fontSize: 16.5.sp,fontWeight: FontWeight.w700),)
                                  ],
                                ),
                              ],

                            ),
                            SizedBox(height: 2.5.h,),
                              Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/icons/two.png',height: 2.h,),
                                SizedBox(width: 3.w,),
                                Column(
                                  children: [
                                    Text('Username',style: TextStyle(color: Color(0xff002065),fontSize: 16.5.sp,fontWeight: FontWeight.w700),)
                                  ],
                                ),
                                
                                
                              ],

                            ),
                            SizedBox(height: 2.5.h,),

                            Row(
                              children: [
                                Text('Name and username are not editable!',style: TextStyle(color: Color(0xff002065),fontSize: 16.sp,fontWeight: FontWeight.w400))
                              ],
                            ),
                            SizedBox(height: 2.5.h,),

                             Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/icons/three.png',height: 3.h,),
                                SizedBox(width: 3.w,),
                                Column(
                                  children: [
                                    Text('Password',style: TextStyle(color: Color(0xff002065),fontSize: 16.5.sp,fontWeight: FontWeight.w700),),
                                    Text('(hidden)',style: TextStyle(color: Color(0xff002065),fontSize: 16.sp,fontWeight: FontWeight.w400),),

                                  ],
                                ),
                                
                                
                              ],

                            ),
                            SizedBox(height: 2.h,),
                            Container(
                              height: 6.h,
                              width: 25.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(color: Color(0xff002065))),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Change password',
                                    style: TextStyle(
                                        color: Color(0xff002065),
                                        fontSize: 16.5.sp,
                                        fontWeight: FontWeight.w700),
                                  )),
                            ),
                            
                            
                          ],
                          
                        ),
                        
                      ),
                      
              ),
              SizedBox(height: 2.h,),
              Container(
                height: 22.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: Color(0xffEAECFF),
                      borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Payments',
                                style: TextStyle(
                                    color: Color(0xff222222),
                                    fontSize: 16.5.sp,
                                    fontWeight: FontWeight.w700))
                              ],
                            ),
                            SizedBox(height: 2.h,),
                             Row(
                              children: [
                                Text('Payments are handled externally.',
                                style: TextStyle(
                                    color: Color(0xff222222),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w300))
                              ],
                            ),
                            SizedBox(height: 2.h,),

                             Row(
                              children: [
                                Text('To Order:',
                                style: TextStyle(
                                    color: Color(0xff222222),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w300)),
                                    SizedBox(width:8.w ,),
                                    Text('Pricing',
                                style: TextStyle(
                                    color: Color(0xff222222),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w300)),
                              ],
                            ),
                            SizedBox(height: 2.h,),

                             Row(
                              children: [
                                Text('To Query:',
                                style: TextStyle(
                                    color: Color(0xff222222),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w300)),
                                    SizedBox(width:10.w ,),

                                    Text('Support',
                                style: TextStyle(
                                    color: Color(0xff222222),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w300)),
                              ],
                            ),
                          ],
                        ),
                      ),
              ),
              SizedBox(height: 2.h,),
              Container(
                
                height: 25.h,
                  width: 100.w,
                  decoration: BoxDecoration(border: Border.all(color: Color(0xffB5B5B5)),borderRadius: BorderRadius.circular(22)),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Row(
                                children: [
                                  Text('Privacy and Data',
                                  style: TextStyle(
                                      color: Color(0xff222222),
                                      fontSize: 16.5.sp,
                                      fontWeight: FontWeight.w700)),
                                ],
                              ),
                              SizedBox(height: 1.h,),
                              
                              Text('Nightly App works to comply with data and privacy laws in all jurisdictions served. Link below:',
                    textAlign: TextAlign.center,

                                  style: TextStyle(
                                      color: Color(0xff222222),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w300)),
                                      Align(alignment: Alignment.bottomLeft,
                                        child: Text('Privacy Policy',style: TextStyle(
                                      color: Color(0xff222222),
                                      fontSize: 16.5.sp,
                                      fontWeight: FontWeight.w700))),
                                      SizedBox(height: 1.5.h,),
                                      Align(alignment: Alignment.bottomLeft,
                                        child: Text('Terms of Service',style: TextStyle(
                                      color: Color(0xff222222),
                                      fontSize: 16.5.sp,
                                      fontWeight: FontWeight.w700))),
                                      SizedBox(height: 1.5.h,),

                                      Align(alignment: Alignment.bottomLeft,
                                        child: Text('Cookies',style: TextStyle(
                                      color: Color(0xff222222),
                                      fontSize: 16.5.sp,
                                      fontWeight: FontWeight.w700))),
                      ],
                    ),
                  )
                            

                      ),
                      SizedBox(height: 2.h,),
                      Container(
                        height: 35.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: Color(0xffEAECFF),
                      borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Behavior',style: TextStyle(
                                      color: Color(0xff222222),
                                      fontSize: 16.5.sp,
                                      fontWeight: FontWeight.w700)),
                                      SizedBox(height: 1.h,),
                                      Text('Bad behaviour is not tolerated on Nightly App.We reserve the right to ban users without priornotice. To report bad behaviour contact supportbelow. Please mention the @username of the offender.',
                                      textAlign: TextAlign.center,

                                  style: TextStyle(
                                      color: Color(0xff222222),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400)),
                                      SizedBox(height: 1.h,),
                                       Text('Support',style: TextStyle(decoration:TextDecoration.underline,
                                      color: Color(0xff222222),
                                      fontSize: 16.5.sp,
                                      fontWeight: FontWeight.w400)),
                                      SizedBox(height: 1.h,),

                                      Text(' For less important instances use the follow/un-follow buttons below posts. You may alsoblock users in the messaging inbox.',
                                      textAlign: TextAlign.center,

                                  style: TextStyle(
                                      color: Color(0xff222222),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400)),

                          ],
                        ),
                      ),
                      ),
            ],
          ),
        ),
      )),
    );
  }
}
