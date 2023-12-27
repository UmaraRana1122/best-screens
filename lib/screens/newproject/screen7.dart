


import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class Profile3 extends StatefulWidget {
  const Profile3({super.key});

  @override
  State<Profile3> createState() => _Profile3State();
}
bool _isUserAuthorized = false;

class _Profile3State extends State<Profile3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
              // height: 100.h,
              // width: 100.w,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff280353),
                    Color(0xff0d032b),
                  ],
                ),
              ),
            ),
            SafeArea(bottom: false,
            child: SingleChildScrollView(
              child: Column(children:[
Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         CircleAvatar(
                        radius: 2.h,
                        backgroundColor: Color(0xff4f3a85),
                child: Image.asset('assets/icons/one1.png',color: Color(0xffFFFFFF),height: 2.h,),
                        
                      ),
                       CircleAvatar(
                        radius: 2.h,
                        backgroundColor: Color(0xff4f3a85),
                child: Image.asset('assets/icons/x.png',color: Color(0xffFFFFFF),height: 2.5.h,),
                        
                      ),
                      ],
                    ),
                  ),
                   CircleAvatar(
                    radius: 7.5.h,
                    backgroundColor: Color(0xff6b28b7),
                    child: Column(
                      children: [
                        Align(alignment: Alignment.topRight,
                          child: CircleAvatar(radius: 1.8.h,
                          
                          backgroundColor: Color(0xffff5a60),
                          child: Icon(Icons.add),),
                        ),
                      ],
                    ),
                  ),
                 
                  SizedBox(height: 1.h,),
                  Text('@Ghost',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 18.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 3.h,),
                  Container(
                    height: 14.h,
                  width: 100.h,
                  decoration: BoxDecoration(color: Color(0xff0c022c)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:50.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
Text('Following',style: TextStyle(color: Color(0xffA64FEA),fontSize: 17.sp,fontWeight: FontWeight.w500),),
                        Text('100',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 20.sp,fontWeight: FontWeight.w500),),
                          ],
                          
                        ),
                                              VerticalDivider(
  color: Color(0xff775383),  
  width: 4.w, 
  thickness: 1, 
  indent: 7, 
  endIndent: 7, 
),
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
 Text('Followed',style: TextStyle(color: Color(0xffA64FEA),fontSize: 17.sp,fontWeight: FontWeight.w500),),
                        Text('07',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 20.sp,fontWeight: FontWeight.w500),),
  ],
)
                      ],
                      )
                    )
                  ),
                      SizedBox(height: 3.h,),
                
                Align(alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('Past Vybes',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 18.sp,fontWeight: FontWeight.w700),),
                )),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
children: [
  Padding(
                        padding: const EdgeInsets.symmetric(horizontal:8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Container(
                      width: 47.w,
                      decoration: BoxDecoration(color: Color(0xff431674),),
                       child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Container(height: 13.h,
                          color: Color(0xff775383),
                          // decoration: ,
                          ),
                        ),
                         SizedBox(height: 2.h,),
                          
                          
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 10),
                            child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Blackout",
                             style: TextStyle(
                               color: Color(0xffFFFFFF),fontSize: 18.sp,fontWeight: FontWeight.w600
                             ),),
                             SizedBox(width: 3.w,),
                             FlutterSwitch(
                              width: 55.0,
                    height: 26,
                    toggleSize: 40.0,
                    value: _isUserAuthorized,
                    borderRadius: 30.0,
                    padding: 0.3,
                    activeToggleColor: Colors.transparent,
                    inactiveToggleColor: Color(0xFF2F363D),
                    activeSwitchBorder: Border.all(
                      color: Colors.transparent,
                      width: 0.0,
                    ),
                     inactiveSwitchBorder: Border.all(
                      color: Color(0xFFD1D5DA).withOpacity(0.5),
                      width: 1.0,
                    ),
                     activeColor: Colors.green,
                    inactiveColor: Colors.transparent,
                    activeIcon: CircleAvatar(
                      backgroundColor: Colors.white,
                    ),
                     inactiveIcon: CircleAvatar(
                      backgroundColor: Colors.white,
                    ), onToggle: (val) { setState(() {
                      _isUserAuthorized = val;
                    }); },
                    
                             )
                              ],
                            ),
                          ),
                          
                          
],
                     ))   )),
                      SizedBox(width: 1.w,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Container(
                            width: 47.w,
                        decoration: BoxDecoration(color: Color(0xff431674),),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
ClipRRect( borderRadius: BorderRadius.circular(25),
  child:   Container(
  height: 13.h,
                            color: Color(0xff775383),
  ),
),
SizedBox(height: 2.h,),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
  child:   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
  Text("Blackout",
                               style: TextStyle(
                                 color: Color(0xffFFFFFF),fontSize: 18.sp,fontWeight: FontWeight.w600
                               ),),
                               SizedBox(width: 3.w,),
                               FlutterSwitch( height: 26,
                                width: 55.0,
                      toggleSize: 40.0,
                      value: _isUserAuthorized,
                      borderRadius: 30.0,
                      padding: 0.3,
                      activeToggleColor: Colors.transparent,
                      inactiveToggleColor: Color(0xFF2F363D),
                      activeSwitchBorder: Border.all(
                        color: Colors.transparent,
                        width: 0.0,
                      ),
                      inactiveSwitchBorder: Border.all(
                        color: Color(0xFFD1D5DA).withOpacity(0.5),
                        width: 1.0,
                      ),
                       activeColor: Colors.green,
                      inactiveColor: Colors.transparent,
                      activeIcon: CircleAvatar(
                        backgroundColor: Colors.white,
                      ),
                       inactiveIcon: CircleAvatar(
                        backgroundColor: Colors.white,
                      ),onToggle: (val) {
                        setState(() {
                          _isUserAuthorized=val;
                        });
                      },
  
  
                      )
    ],
  ),
)
                        ],),
                          ),
                        ),
                      ),

                      ]

            ),),
SizedBox(height: 3.h,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: [
                FlutterSwitch(
                  height: 26,
                          width: 55.0,
                        toggleSize: 40.0,
                        value: _isUserAuthorized,
                        borderRadius: 30.0,
                        padding: 0.3,
                        activeToggleColor: Colors.transparent,
                        inactiveToggleColor: Color(0xFF2F363D),
                        activeSwitchBorder: Border.all(
                          color: Colors.transparent,
                          width: 0.0,
                        ),
                        inactiveSwitchBorder: Border.all(
                          color: Color(0xFFD1D5DA).withOpacity(0.5),
                          width: 1.0,
                        ),
                         activeColor: Colors.green,
                        inactiveColor: Colors.transparent,
                        activeIcon: CircleAvatar(
                          backgroundColor: Colors.white,
                        ),
                         inactiveIcon: CircleAvatar(
                          backgroundColor: Colors.white,
                        ),onToggle: (val) {
                          setState(() {
                            _isUserAuthorized=val;
                          });
                          
                        },


                ),
                SizedBox(width: 3.w,),
                  Text('Social Media',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 18.sp,fontWeight: FontWeight.w700),),
                       Spacer(),
                  Image.asset('assets/icons/s1q.png',height: 3.5.h,),
                  SizedBox(width: 3.w,),
                  Image.asset('assets/icons/s2.png',height: 3.5.h,),
                  SizedBox(width: 3.w,),
                  
                  Image.asset('assets/icons/s3.png',height: 3.5.h,),
                  SizedBox(width: 3.w,),
                  
                  Image.asset('assets/icons/z4.png',height: 3.5.h,),
              ],),
            ),
            SizedBox(height: 3.h,),
    Divider(
                       color: Color(0xff8047E3), 
                       height: 5, 
                       thickness: 1, 
                       indent: 26, 
                       endIndent: 25, 
                    ),
                  SizedBox(height: 3.h,),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:15,vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                  Text('Full Name',style: TextStyle(color: Color(0xff8047E3),fontSize: 16.sp,fontWeight: FontWeight.w700),),
                  Text('Lewis Kingston',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16.sp,fontWeight: FontWeight.w700),),

                        
                      ],),
                    ),
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal:15,vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                  Text('Location',style: TextStyle(color: Color(0xff8047E3),fontSize: 16.sp,fontWeight: FontWeight.w700),),
                  Text('NW1',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16.sp,fontWeight: FontWeight.w700),),

                        
                      ],),
                    ),
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal:15,vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                  Text('Email',style: TextStyle(color: Color(0xff8047E3),fontSize: 16.sp,fontWeight: FontWeight.w700),),
                  Text('ghost@gmail.com',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16.sp,fontWeight: FontWeight.w700),),

                        
                      ],),
                    ),
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal:15,vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                  Text('Phone Number',style: TextStyle(color: Color(0xff8047E3),fontSize: 16.sp,fontWeight: FontWeight.w700),),
                  Text('07867654356',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16.sp,fontWeight: FontWeight.w700),),

                        
                      ],),
                    ),
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal:15,vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                  Text('Username',style: TextStyle(color: Color(0xff8047E3),fontSize: 16.sp,fontWeight: FontWeight.w700),),
                  Text('@Ghost',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16.sp,fontWeight: FontWeight.w700),),

                        
                      ],),
                    ),
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal:15,vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                  Text('Password',style: TextStyle(color: Color(0xff8047E3),fontSize: 16.sp,fontWeight: FontWeight.w700),),
                  Text('***********',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16.sp,fontWeight: FontWeight.w700),),

                        
                      ],),
                    ),
                    SizedBox(height: 3.h,),
    Divider(
                       color: Color(0xff8047E3), 
                       height: 5, 
                       thickness: 1, 
                       indent: 26, 
                       endIndent: 25, 
                    ),
                     Align(alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('Past Vybes',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 18.sp,fontWeight: FontWeight.w700),),
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('Copy Events To Calenders',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16.sp,fontWeight: FontWeight.w500),),
                    
FlutterSwitch(height: 26,
                            width: 55.0,
                          toggleSize: 40.0,
                          value: _isUserAuthorized,
                          borderRadius: 30.0,
                          padding: 0.3,
                          activeToggleColor: Colors.transparent,
                          inactiveToggleColor: Color(0xFF2F363D),
                          activeSwitchBorder: Border.all(
                            color: Colors.transparent,
                            width: 0.0,
                          ),
                          inactiveSwitchBorder: Border.all(
                            color: Color(0xFFD1D5DA).withOpacity(0.5),
                            width: 1.0,
                          ),
                           activeColor: Colors.green,
                          inactiveColor: Colors.transparent,
                          activeIcon: CircleAvatar(
                            backgroundColor: Colors.white,
                          ),
                           inactiveIcon: CircleAvatar(
                            backgroundColor: Colors.white,
                          ),onToggle: (val) {
                            setState(() {
                              _isUserAuthorized=val;
                            });
                          },

)
                  ],),
                ),
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('Hide Next Vybe',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16.sp,fontWeight: FontWeight.w500),),
                    
FlutterSwitch(height: 26,
                            width: 55.0,
                          toggleSize: 40.0,
                          value: _isUserAuthorized,
                          borderRadius: 30.0,
                          padding: 0.3,
                          activeToggleColor: Colors.transparent,
                          inactiveToggleColor: Color(0xFF2F363D),
                          activeSwitchBorder: Border.all(
                            color: Colors.transparent,
                            width: 0.0,
                          ),
                          inactiveSwitchBorder: Border.all(
                            color: Color(0xFFD1D5DA).withOpacity(0.5),
                            width: 1.0,
                          ),
                           activeColor: Colors.green,
                          inactiveColor: Colors.transparent,
                          activeIcon: CircleAvatar(
                            backgroundColor: Colors.white,
                          ),
                           inactiveIcon: CircleAvatar(
                            backgroundColor: Colors.white,
                          ),onToggle: (val) {
                            setState(() {
                              _isUserAuthorized=val;
                            });
                          },

),
                  ],),
                ),
                  Align(alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('Support',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 18.sp,fontWeight: FontWeight.w700),),
                )),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Image.asset('assets/icons/mess.png',height: 4.h,),
                      SizedBox(width: 1.w,),
                      Text('For Customer Services Please Contact\nSupport@VybeApp.CO.UK',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16.sp,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
                 Align(alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('About',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 18.sp,fontWeight: FontWeight.w700),),
                )),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  CircleAvatar(
                    radius: 5.h,
                    backgroundColor: Color(0xff8B29C4),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text('T&C',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16.sp,fontWeight: FontWeight.w600),),
                    ],),
                  ),
                  SizedBox(width: 4.w,),
                  CircleAvatar(
                    radius: 5.h,
                    backgroundColor: Color(0xffFFFFFF),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                      Text('Version\n1.0.0',textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xff8B29C4),fontSize: 16.sp,fontWeight: FontWeight.w600),),
                    ],),
                  ),
                  SizedBox(width: 4.w,),

                  CircleAvatar(
                    radius: 5.h,
                    backgroundColor: Color(0xff8B29C4),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text('PRIVACY',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16.sp,fontWeight: FontWeight.w600),),
                    ],),
                  ),
                ],)
       ] ))
    )]),
    );
      
            }}
 

                               
                
               
                             
              
                         
                       
                 
                        
                        
                       
               
               
                        
               
                
                
                
   