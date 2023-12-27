import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/screens/zoom/help.dart';
import 'package:task1/screens/zoom/rate.dart';

import '../screens/zoom/about.dart';
import '../screens/zoom/zoomdrawer.dart';


List titles = [
  "Payment",
  "Promo",
  "Notification",
  "Help",
  "About Us",
  "Rate Us",


];
// List images =[
// "assets/images/1st.jpeg",

// "assets/images/y1.png",
// "assets/images/y1.png",
// "assets/images/y1.png",
// "assets/images/y1.png",
// "assets/images/y1.png",



 


// ];
final  List<IconData> icons = [
    Icons.payment,
    Icons.card_giftcard_outlined,
    Icons.notification_important_outlined,
    Icons.help_outline,
     Icons.info_outline_rounded,
    Icons.star_border,

];
class HomeNew extends StatefulWidget {
  const HomeNew({Key? key}) : super(key: key);

  @override
  State<HomeNew> createState() => _HomeNewState();
}

class _HomeNewState extends State<HomeNew> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return ZoomDrawer(
          disableDragGesture: false,
          
            menuScreen: DrawerScreen(
              setIndex: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            shadowLayer1Color: Colors.transparent,
            shadowLayer2Color: Colors.greenAccent,

            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 10,
                blurRadius: 20
              )
            ],
            
        //  mainScreenTapClose: true,
            mainScreen: Builder(
              builder: (context) {
                return currentScreen();

              }
            ),
            openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.bounceIn,
               borderRadius: 30,
          showShadow: true,

          // style: DrawerStyle.style5  ,
          angle: -6.0,
       slideWidth: MediaQuery.of(context).size.width * 0.86,
          menuBackgroundColor: Colors.white,);
      }
    );
  }

  Widget currentScreen() {
    switch(currentIndex) {
      case 0:
        return ZoomDrawer1();
      case 1:
        return Help();
      case 2:
        return AboutUs();
      
      case 3:
        return RateUs();
    
      default:
        return AboutUs();
    }
  }
}

class DrawerScreen extends StatefulWidget {
  final ValueSetter setIndex;
  const DrawerScreen({Key? key, required this.setIndex}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  int active =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //  Spacer(),
              SafeArea(
                bottom: false,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                    Spacer(),
                          InkWell(
                            onTap: (){
                               ZoomDrawer.of(context)!.close();
                            },
                            child: Icon(Icons.close,color: Colors.black,)),
                        ],
                      ),
                      SizedBox(height: 2.h),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                          child: Row(
                            children: [
                             CircleAvatar(
                                radius: 2.h,
                                backgroundColor: Colors.transparent,
                                backgroundImage: AssetImage("assets/images/girl2.png"),
                                
                              ),
                              SizedBox(width: 3.w),
                           
                              Text("Sana Abbas"),
                              Spacer(),
                              Image.asset("assets/icons/gabu1.png",height: 3.h,color: Colors.black,)
                             
                      
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 3.h),
                    ],
                  ),
                ),
              ),
Expanded(
  // flex: 4,
  child:   Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        flex: 2,
        child: Center(
          child: Container(
                // height:70.h,
                width: 60.w,
                child:   ListView(
                  // physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
              children:[ 
                ...List.generate(titles.length,((index) => 
                InkWell(
                    onTap: (){
                      setState(() {
                         widget.setIndex(index);
                         active=index;
                         ZoomDrawer.of(context)!.close();
                      });
                    },
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical:4.0),
                      child: Container(
                        height: 5.h,
                        decoration: BoxDecoration(
                      color:  active==index?   Colors.red:Colors.transparent,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child:
                        Row(
                          
                          children: [
                            SizedBox(width: 4.w),
                            Icon(icons[index],size: 2.h,color: active==index? Colors.white:Colors.black,),
                            SizedBox(width: 2.5.w),
                            Text(titles[index],
                        style: GoogleFonts.montserrat(
                          color: active==index? Colors.white:Colors.black,
                          fontSize: 14.sp,
                          fontWeight: active==index?   FontWeight.w600:FontWeight.w500
                    
                        ),
                        ),
      
                          ],
                        ),
                   
                      ),
                    ),
                  ))),
              
                  ]),
          ),
        ),
      ),
  Expanded(child: Padding(
    padding: const EdgeInsets.symmetric(horizontal:12.0),
    child: Column(
      children: [
                     Center(
                              child: Container(
                                // width: 80.w,
                                height: 5.h,
                                decoration: BoxDecoration(
                                  color: Color(0xffF0F0F0),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(
                                  child: Text("Switch to Gym Account",
                                
                                  ),
                                ),
                                      
                              ),
                            ),
                            SizedBox(height: 2.h),
                            Center(
                              child: InkWell(
                                onTap: (){
                                  // Get.to(AddCard());
                                },
                                child: Container(
                                  // width: 80.w,
                                  height: 5.h,
                                  decoration: BoxDecoration(
                                    color: Color(0xffF0F0F0),
                                   
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Center(
                                    child: Text("Switch to Trainer Account",
                             
                                    ),
                                  ),
                                        
                                ),
                              ),
                            ),
        
      ],
    ),
  ))
    ],
  ),
),

            ],
          ),
   
       
        ],
      ),
    );
  }




}