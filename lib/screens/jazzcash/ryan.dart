
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/screens/jazzcash/widgest.dart';
class Ryan extends StatefulWidget {
  const Ryan({super.key});

  @override
  State<Ryan> createState() => _RyanState();
}
     int currentindex = 0;

  
  
class _RyanState extends State<Ryan>
  with TickerProviderStateMixin {
 
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
       key: _scaffoldKey,
      drawer: Drawer(
        
      child: ListView(
        
        padding: EdgeInsets.zero,
        children: [
          
           SizedBox(
            height: 40.h,
             child: DrawerHeader(
              
              decoration: BoxDecoration(
                
                color: Color(0xffb42929),
              ),
              child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                 InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                   child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                 
                       child: Image.asset("assets/icons/close.png",color: Colors.white,height: 2.h,),
                      ),
                 ),
         

                 Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   
                   ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Container(
                            height: 10.h,
                            width: 20.w,
                            decoration: BoxDecoration(
                              // borderRadius: BorderRadius.circular(10),
                              color: Colors.transparent,
                                                
                          ),
                          
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Image.asset(
                                "assets/images/person9.png",
                                height: 6.8.h,
                                width: 5.h,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 2.h,),
                        Row(children: [
                                        Text(" Ryan",style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w400),),
                                        SizedBox(width: 2.w,),
                                        CircleAvatar(
                                          radius: 1.h,
                                          backgroundColor: Color(0xfff4b7b4),
                                          child: Icon(Icons.arrow_forward_ios,size: 1.h,color: Colors.black,),
                                        )

                        ],),
                        SizedBox(height: 1.h,),
                Text("ID-0023-Ryon",style: TextStyle(color: Color(0xfff4b7b4),fontSize: 15.sp,fontWeight: FontWeight.w500),),
                Text("Company: Universal Data Center",style: TextStyle(color: Color(0xfff4b7b4),fontSize: 15.sp,fontWeight: FontWeight.w500),),



                ],),
              ),
              ],)
          ),
           ),
           Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 60),

             child: Column(children: [
Row(children: [
  Icon(Icons.notification_important_rounded,color: Color(0xffb42929),size: 2.5.h,),
                                        Text(" Message center",style: TextStyle(color: Colors.black,fontSize: 17.sp,fontWeight: FontWeight.w700),),


],),
SizedBox(height: 4.h,),

Row(children: [
  Icon(Icons.insert_drive_file ,color: Color(0xffb42929),size: 2.5.h,),
                                        Text(" Ticket resaerch",style: TextStyle(color: Colors.black,fontSize: 17.sp,fontWeight: FontWeight.w700),),


],),
SizedBox(height: 4.h,),

Row(children: [
  Icon(Icons.security,color: Color(0xffb42929),size: 2.5.h,),
                                        Text(" Suggestion",style: TextStyle(color: Colors.black,fontSize: 17.sp,fontWeight: FontWeight.w700),),


],),
SizedBox(height: 4.h,),

Row(children: [
  Icon(Icons.call,color: Color(0xffb42929),size: 2.5.h,),
                                        Text(" Contact Us",style: TextStyle(color: Colors.black,fontSize: 17.sp,fontWeight: FontWeight.w700),),


],),

             ],),
           )
          
        ],
      ),
    ),
      
      backgroundColor: Color(0xff2c2a2b),
       bottomNavigationBar: Container(
        height: 14.h,
        decoration: BoxDecoration(color: Color(0xffbd2c2b)),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            children: [
            Column(
              children: [
                CircleAvatar(
                  radius: 3.h,
                  backgroundColor: Color(0xffe69e9d),
                  child: Icon(Icons.local_activity,color: Colors.white,size: 3.h,)
                ),
              ],
            ),
            SizedBox(width: 3.w,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
              Text("260",style: TextStyle(color: Colors.white,fontSize: 21.sp,fontWeight: FontWeight.w500),),
              SizedBox(height: .5.h,),
              Text("My application",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w300),),

            ],),
            Spacer(),
            Column(
              children: [
                Container(
                  height: 6.h,
                  width: 35.w,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25)),
                  child: 
                  Align(child: Text("Submission",style: TextStyle(color: Color(0xffbd2c2b),fontSize: 17.sp,fontWeight: FontWeight.w500),)),

                ),
              ],
            )
          ],),
        ),
       
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              
            InkWell(
              onTap: (){
             _scaffoldKey.currentState?.openDrawer();
          },
              child: Image.asset("assets/icons/lines.png",height: 4.h,color: Color(0xffa7a4a6),)),
            SizedBox(height: 3.h,),
              Row(
                children: [
                  Text("Welcome!",style: TextStyle(color: Colors.white,fontSize: 23.sp,fontWeight: FontWeight.w500),),
              Text(" Ryan",style: TextStyle(color: Colors.white,fontSize: 21.sp,fontWeight: FontWeight.w400),),
              
                ],
              ),
              SizedBox(height: 3.h,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                child: Row(children: [
                  Column(children: [
                  Container(
                    height: 8.h,
                    width: 17.w,
                    decoration: BoxDecoration(color: Color(0xffbd2c2b),borderRadius: BorderRadius.circular(20)),
                    child: Icon(Icons.search,color: Colors.white,size: 5.h,),
                  ),
                SizedBox(height: 1.7.h,),
              
                Text("Lookup",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w300),),
                  
              
                  ],),
                SizedBox(width: 5.w,),
              
                    Column(children: [
                  Container(
                    height: 8.h,
                    width: 17.w,
                    decoration: BoxDecoration(color: Color(0xffbd2c2b),borderRadius: BorderRadius.circular(20)),
                    child: Icon(Icons.person,color: Colors.white,size: 5.h,),
                  ),
                SizedBox(height: 1.7.h,),
              
                Text("Customer",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w300),),
                  
              
                  ],),  
                SizedBox(width: 5.w,),
              
                  
                  Column(children: [
                  Container(
                    height: 8.h,
                    width: 17.w,
                    decoration: BoxDecoration(color: Color(0xffbd2c2b),borderRadius: BorderRadius.circular(20)),
                    child: Icon(Icons.manage_accounts_outlined,color: Colors.white,size: 5.h,),
                  ),
                SizedBox(height: 1.7.h,),
              
                Text("Contacts",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w300),),
                  
              
                  ],), 
                SizedBox(width: 5.w,),
              
                   Column(children: [
                  Container(
                    height: 8.h,
                    width: 17.w,
                    decoration: BoxDecoration(color: Color(0xffbd2c2b),borderRadius: BorderRadius.circular(20)),
                    child: Icon(Icons.chat_sharp,color: Colors.white,size: 5.h,),
                  ),
                SizedBox(height: 1.7.h,),
              
                Text("Messages",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w300),),
                  
              
                  ],), 
                SizedBox(width: 5.w,),
              
                  
                   Column(children: [
                  Container(
                    height: 8.h,
                    width: 17.w,
                    decoration: BoxDecoration(color: Color(0xffbd2c2b),borderRadius: BorderRadius.circular(20)),
                    child: Icon(Icons.search,color: Colors.white,size: 5.h,),
                  ),
                SizedBox(height: 1.7.h,),
              
                Text("Lookup",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w300),),
                  
              
                  ],),
                ],),
              ),
              SizedBox(height: 3.h,),
Row(children: [
  CircleAvatar(radius: .6.h,
  backgroundColor: Color(0xffbd2c2b),),
  SizedBox(width: 3.w,),
                Text("Service Request",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w300),),
                Spacer(),
                Icon(Icons.more_horiz_rounded,size: 5.h,color: Colors.white70,)
  
],),
Container(
  height: 42.h,
  width: MediaQuery.of(context).size.width,
  child: PageView.builder(
    itemCount: 5,
   padEnds: false,
                pageSnapping: false,
                physics: BouncingScrollPhysics(),
                reverse: true,
                controller:
                    PageController(initialPage: 3, viewportFraction: 0.9),
                    onPageChanged: (value) {
                  currentindex = value;
                  setState(() {});
                },
    
    itemBuilder: (
    (context, index) {
    
    return requestcontainer();
  })),
),
 Center(
   child: TabPageSelector(
                controller: TabController(
                    length: 5,
                    initialIndex: currentindex,
                    vsync: this),
                selectedColor: Colors.red,
                color: Colors.grey,
                borderStyle: BorderStyle.none,
              ),
 ),
 
        ]),
      ),
     ) );
  }
}