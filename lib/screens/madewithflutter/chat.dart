import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(
                        stops: [0.0, 0.50,],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff20384e),
                            Color(0xff15273f),
                           


                            
                          ]
                      )),
                      child: SafeArea(
                        bottom: false,
                        child: Column(
                          children: [
                              SizedBox(height: 3.h,),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                            child: Row(children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 3.h,
                                    backgroundColor: Color(0xff1e364c),
                                    child: Icon(Icons.person,size: 4.7.h,color: Colors.white,),
                                  ),
                                  SizedBox(height: 2.h,),
                                  Text("Chat",style: TextStyle(color: Colors.white,fontSize: 17.sp,fontWeight: FontWeight.w500),)
                                ],
                              ),
                              SizedBox(width: 15.w,),
                               Column(
                                 children: [
                                   CircleAvatar(
                                    radius: 3.h,
                                    backgroundColor: Color(0xff1e364c),
                                   child: Image.asset("assets/icons/fire.png",color: Colors.white,height: 4.h,)
                              ),
                               SizedBox(height: 2.h,),
                                  Text("Pairs",style: TextStyle(color: Colors.white,fontSize: 17.sp,fontWeight: FontWeight.w500),)
                                 ],
                               ),
                              SizedBox(width: 15.w,),

                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 3.h,
                                    backgroundColor: Color(0xffa58954),
                                    child: Icon(Icons.chat_bubble,color: Colors.white,size: 3.h,),
                                  ),
                                   SizedBox(height: 2.h,),
                                  Text("Activities",style: TextStyle(color: Colors.white,fontSize: 17.sp,fontWeight: FontWeight.w500),)
                                ],
                              ),
                            ],),
                          ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 0),
                      child: Column(children: [
                             Divider(
          height: 5.h,
          color: Color(0xff7a8896),
          thickness: .7,
          indent : 10,
          endIndent : 10,       
       ),
      
                      ],),
                    ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 0),
                       child: Row(children: [
        CircleAvatar(
          radius: 4.h,
          backgroundColor: Color(0xffc09f60),
          child: CircleAvatar(radius: 3.8.h,
          backgroundImage: AssetImage("assets/images/alan.png"),),
        ),
                                  SizedBox(width: 5.w,),
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
   Row(children: [
                                  Text("Sanskar ",style: TextStyle(color: Colors.white,fontSize: 17.sp,fontWeight: FontWeight.w500),),
                                  SizedBox(width: 1.w,),
                                  CircleAvatar(
                                    radius: .3.h,
                                    backgroundColor: Color(0xffc09f60),
                                  ),
                                  SizedBox(width: 1.3.w,),

                                  Text("4 ",style: TextStyle(color: Colors.white,fontSize: 17.sp,fontWeight: FontWeight.w500),),
                                  SizedBox(width:21.w,),
                                  
                                  Text("2 Hours",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w500),),



        ],),
        SizedBox(height: 2.h,),
                                  Text("This is strange i can send message \nto myself.",style: TextStyle(color: Colors.white60,fontSize: 15.sp,fontWeight: FontWeight.w500),),


],)
       
        
       ],),
       
                     ),
                    Container(
		  margin:  EdgeInsets.only(left: 110.0, right: 21.0),
		  child: Divider(
			color: Colors.white,
			height: 3.h,
		  )),
  Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 0),
                       child: Row(children: [
        CircleAvatar(
          radius: 4.h,
          backgroundColor: Color(0xffc09f60),
          child: CircleAvatar(radius: 3.8.h,
          backgroundImage: AssetImage("assets/images/anna.png"),),
        ),
                                  SizedBox(width: 5.w,),
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
   Row(children: [
                                  Text("Anna ",style: TextStyle(color: Colors.white,fontSize: 17.sp,fontWeight: FontWeight.w500),),
                                 
                                  
                                  SizedBox(width:35.w,),
                                  
                                  Text("2 Hours",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w500),),



        ],),
        SizedBox(height: 2.h,),
                                  Row(
                                    children: [
                                      Icon(Icons.switch_access_shortcut_sharp,color: Colors.blueGrey,),
                                      Text("Hahahha,yeah,",style: TextStyle(color: Colors.white60,fontSize: 15.sp,fontWeight: FontWeight.w500),),
                                    ],
                                  ),


],)
       
        
       ],),
       
                     ),
                      Container(
		  margin:  EdgeInsets.only(left: 110.0, right: 21.0),
		  child: Divider(
			color: Colors.white,
			height: 3.h,
		  )),
       Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 0),
                       child: Row(children: [
        CircleAvatar(
          radius: 4.h,
          backgroundColor: Color(0xffc09f60),
          child: CircleAvatar(radius: 3.8.h,
          backgroundImage: AssetImage("assets/images/girl2.png"),),
        ),
                                  SizedBox(width: 5.w,),
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
   Row(children: [
                                  Text("Sanskar ",style: TextStyle(color: Colors.white,fontSize: 17.sp,fontWeight: FontWeight.w500),),
                                  SizedBox(width: 1.w,),
                                  CircleAvatar(
                                    radius: .3.h,
                                    backgroundColor: Color(0xffc09f60),
                                  ),
                                  SizedBox(width: 1.3.w,),

                                  Text("11 ",style: TextStyle(color: Colors.white,fontSize: 17.sp,fontWeight: FontWeight.w500),),
                                  SizedBox(width:21.w,),
                                  
                                  Text("2 Hours",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w500),),



        ],),
        SizedBox(height: 2.h,),
                                  Text("Lets catchup sometimes Sanskar.",style: TextStyle(color: Colors.white60,fontSize: 15.sp,fontWeight: FontWeight.w500),),


],)
       
        
       ],),
       
                     ),
                    Container(
		  margin:  EdgeInsets.only(left: 110.0, right: 21.0),
		  child: Divider(
			color: Colors.white,
			height: 3.h,
		  )),
       Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 0),
                       child: Row(children: [
        CircleAvatar(
          radius: 4.h,
          backgroundColor: Color(0xffc09f60),
          child: CircleAvatar(radius: 3.8.h,
          backgroundImage: AssetImage("assets/images/alan.png"),),
        ),
                                  SizedBox(width: 5.w,),
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
   Row(children: [
                                  Text("Marian ",style: TextStyle(color: Colors.white,fontSize: 17.sp,fontWeight: FontWeight.w500),),
                                  SizedBox(width: 1.w,),
                                  CircleAvatar(
                                    radius: .3.h,
                                    backgroundColor: Color(0xffc09f60),
                                  ),
                                  SizedBox(width: 1.3.w,),

                                  Text("1 ",style: TextStyle(color: Colors.white,fontSize: 17.sp,fontWeight: FontWeight.w500),),
                                  SizedBox(width:25.w,),
                                  
                                  Text("2 Hours",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w500),),



        ],),
        SizedBox(height: 2.h,),
                                  Text("Hey Sanskar! How are you?.",style: TextStyle(color: Colors.white60,fontSize: 15.sp,fontWeight: FontWeight.w500),),


],)
       
        
       ],),
       
                     ),
                    Container(
		  margin:  EdgeInsets.only(left: 110.0, right: 21.0),
		  child: Divider(
			color: Colors.white,
			height: 3.h,
		  )),
       Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 0),
                       child: Row(children: [
        CircleAvatar(
          radius: 4.h,
          backgroundColor: Color(0xffc09f60),
          child: CircleAvatar(radius: 3.8.h,
          backgroundImage: AssetImage("assets/images/alan.png"),),
        ),
                                  SizedBox(width: 5.w,),
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
   Row(children: [
                                  Text("Saamanta ",style: TextStyle(color: Colors.white,fontSize: 17.sp,fontWeight: FontWeight.w500),),
                              
                                  SizedBox(width:28.w,),
                                  
                                  Text("2 Hours",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w500),),



        ],),
        SizedBox(height: 2.h,),
                                  Text("Thats awsome Sanskar",style: TextStyle(color: Colors.white60,fontSize: 15.sp,fontWeight: FontWeight.w500),),


],)
       
        
       ],),
       
                     ),
                    Container(
		  margin:  EdgeInsets.only(left: 110.0, right: 21.0),
		  child: Divider(
			color: Colors.white,
			height: 3.h,
		  )),
      
                     
                        ],),
                      ),
      ),
    );
  }
}