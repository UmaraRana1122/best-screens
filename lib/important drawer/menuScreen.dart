import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/widgets/drawer.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            CircleAvatar(
              radius: 6.h,
              backgroundImage: AssetImage('assets/images/girl2.png'),
            ),
            SizedBox(height: 1.h,),
            Text("Sarah Abbas",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 5.h,),

            listWidget("Payment", Icons.payment),
            listWidget("Promo", Icons.card_giftcard_outlined),
            listWidget("Notification", Icons.notification_important),
            listWidget("Help", Icons.help),
            listWidget("About Us", Icons.web_sharp),
            listWidget("Rate Us", Icons.star_border),
            SizedBox(height: 20.h,),
           Align(
            alignment: Alignment.bottomLeft,
             child: Container(
              height: 5.7.h,
              width: 31.w,
              decoration: BoxDecoration(color: Colors.blue[900],
              borderRadius: BorderRadius.circular(25),border: Border.all(color: Colors.white),),
              child: listWidget("LogOut", Icons.lock),
             ),
           )



          ],),
        ),
      )
    );
  }
}