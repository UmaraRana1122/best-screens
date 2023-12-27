import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class Chat2 extends StatefulWidget {
  const Chat2({super.key});

  @override
  State<Chat2> createState() => _Chat2State();
}
TextEditingController email = TextEditingController();
TextEditingController username = TextEditingController();
class _Chat2State extends State<Chat2> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xff081c32),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom
          ),
          child: Container(
                height: 10.h,
                width: 100.w,
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    color: Color(0xff5a6675),
                    borderRadius: BorderRadius.circular(0)),
                child: Expanded(
                  child: Row(children: [
                        
                         CircleAvatar(
                          radius: 2.h,
                          backgroundColor: Colors.white30,
                          child:  
                           Icon(
                            Icons.mood,
                            color: Colors.white,
                          ),
                          
                         ),
                         SizedBox(width: 2.w,),
                           Expanded(
                            child: TextField(
                              style: TextStyle(color: Colors.white,fontSize: 16.sp),

                                controller: email,
                            onSubmitted: ((value) {
                              setState(() {
                                email.text = value;
                              });
                            }),
                                    keyboardType: TextInputType.multiline,
                                    maxLines: null,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Message..',
                                        hintStyle: TextStyle(color: Colors.white, fontSize: 16.sp),
                                        
                                       ),
                                  ),
                          ), 
                           CircleAvatar(
                          radius: 2.h,
                          backgroundColor: Colors.white30,
                          child:  
                           Icon(
                            Icons.mic,
                            color: Colors.white,
                          ),
                          
                         ),
                         SizedBox(width: 2.w,),
                      
                        CircleAvatar(
                          radius: 2.h,
                          backgroundColor: Colors.white30,
                          child:  
                           RotatedBox(
                            quarterTurns: 4,
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Icon(
                  Icons.send,
                  color: Colors.white,
                       ),
                             ),
                           ),
                          
                         ),
                      
                  
                   
                  ],),
                )
              ),
        ), 
        
        
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
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
                      Text("Samanta ",style: TextStyle(color: Colors.white,fontSize: 17.sp,fontWeight: FontWeight.w500),),
                      SizedBox(width: 1.w,),
                      
            
                     
                      
            
            
            
                ],),
                SizedBox(height: 1.h,),
                      Text("Online",style: TextStyle(color: Colors.white60,fontSize: 15.sp,fontWeight: FontWeight.w500),),
            
            
            ],),
            Spacer(),
            CircleAvatar(
            radius: 3.h,
            backgroundColor: Color(0xffc09f60),
            child: Icon(Icons.call,size: 3.h,color: Colors.white,),
            ),
                 
                
                 ],),
                 
                       ),
                       SizedBox(height: 4.h,),
                       Align(
                alignment: Alignment.topLeft,
                 child: Container(
            height: 7.h,
            width: 50.w,
            decoration: BoxDecoration(color: Colors.white24,borderRadius: BorderRadius.only(topRight: Radius.circular(40),bottomRight: Radius.circular(40))),
            child: Align(child: Text("Lorem ispem dolor sit amet",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w400),)),
                 ),
                       ),
                       SizedBox(height: 2.h,),
                       Align(
                alignment: Alignment.topLeft,
                 child: Container(
            height: 7.h,
            width: 50.w,
            decoration: BoxDecoration(color: Colors.white24,borderRadius: BorderRadius.only(topRight: Radius.circular(40),bottomRight: Radius.circular(40))),
            child: Align(child: Text("Lorem ispem dolor sit amet",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w400),)),
                 ),
                       ),
                       SizedBox(height: 2.h,),
                       Align(
                alignment: Alignment.topRight,
                 child: Container(
            height: 7.h,
            width: 50.w,
            decoration: BoxDecoration(color: Color(0xffc09f60),borderRadius: BorderRadius.only(topLeft: Radius.circular(40),bottomLeft: Radius.circular(40))),
            child: Align(child: Text("Lorem ispem dolor sit amet",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w400),)),
                 ),
                       ),
                     
            
                     
                           
                     
                    
                
                
                       
            ],),
          ),
        )
      ),
    );
  }
}