
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: DrawerScree(setIndex: (index) {
        setState(() {
          currentIndex = index;
        });
      },),
      mainScreen: currentScreen(),
      borderRadius: 30,
      showShadow: true,
      angle: 0.0,
      slideWidth: 200,
      menuBackgroundColor: Color(0xff0d47a2),
    );
  }

  Widget currentScreen() {
    switch(currentIndex) {
      case 0:
        return HomeScreen(title: "Payment",);
      case 1:
        return HomeScreen(title: "Promo",);
      case 2:
        return HomeScreen(title: "Notification",);
      case 3:
        return HomeScreen(title: "Help",);
      case 4:
        return HomeScreen(title: "About Us",);
      case 5:
        return HomeScreen(title: "Rate Us",);
      default:
        return HomeScreen();
    }
  }

}

class HomeScreen extends StatefulWidget {
  final String title;
  const HomeScreen({Key? key, this.title = "Home"}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        leading: DrawerWidget(),
      ),
     
    );
  }
}

class DrawerScree extends StatefulWidget {
  final ValueSetter setIndex;
  const DrawerScree({Key? key, required this.setIndex}) : super(key: key);

  @override
  State<DrawerScree> createState() => _DrawerScreeState();
}

class _DrawerScreeState extends State<DrawerScree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: SafeArea(
        child: Column(
          children: [
            CircleAvatar(
              radius: 5.5.h,
              backgroundImage: AssetImage("assets/images/girl2.png"),
            ),
            SizedBox(height: 2.h,),
            Text("Sarah Abbas",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 6.h,),

            ( drawerList(Icons.payment, "Payment", 0)),
            SizedBox(height: .6.h,),

            drawerList(Icons.card_giftcard, "Promo", 1),
            SizedBox(height: .6.h,),

            drawerList(Icons.notification_important, "Notification", 2),
            SizedBox(height: .6.h,),
            
            drawerList(Icons.help, "Help", 3),
            SizedBox(height: .6.h,),

            drawerList(Icons.archive, "About Us", 4),
            SizedBox(height: .6.h,),

            drawerList(Icons.star_border, "Rate Us", 5),
            SizedBox(height: 15.h,),
              Align(
            alignment: Alignment.bottomLeft,
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                height: 5.7.h,
                width: 31.w,
                decoration: BoxDecoration(color: Colors.blue[900],
                borderRadius: BorderRadius.circular(25),border: Border.all(color: Colors.white),),
                child: listWidget("LogOut", Icons.lock),
               ),
             ),
           )

          ],
        ),
      ),
    );
  }

  Widget drawerList(IconData icon, String text, int index) {
    return GestureDetector(
      onTap: () {
        widget.setIndex(index);
      },
      child: Container(
        margin: EdgeInsets.only(left: 20, bottom: 12),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            SizedBox(width: 12,),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        ZoomDrawer.of(context)!.toggle();
      },
      icon: Icon(Icons.menu),
    );
  }
}

