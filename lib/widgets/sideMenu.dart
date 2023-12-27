import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/screens/task9/food.dart';
import 'package:task1/screens/task9/favouraiteScreen.dart';
import 'package:task1/widgets/sideWidget.dart';
final zoomDrawerController = ZoomDrawerController();
class MainNavScreen extends StatefulWidget {
 
  const MainNavScreen({Key? key,}) : super(key: key);
  @override
  _MainNavScreenState createState() => _MainNavScreenState();
}
class _MainNavScreenState extends State<MainNavScreen> {
  int selectBtn = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: widget.isDessert? Colors.green:Colors.red,
      body: Stack(
        children: [
         
          selectBtn == 0
              ? Pro7()
              : selectBtn == 1
                  ? FavouraiteScreen(isDessert: false,)
                  : selectBtn == 2
                      ? Pro7()
                      : selectBtn == 3
                          ?  FavouraiteScreen(isDessert: true,)
                          : Pro7(),
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: navigationBar(),
          ),
        ],
      ),
    );
  }
  navigationBar() {
    return RotatedBox(
        quarterTurns: 1,
        child: AnimatedContainer(
          height: 8.h,
          duration: const Duration(milliseconds: 400),
          decoration: BoxDecoration(
            color: const Color(0xFFDA3AB4),
            // borderRadius: BorderRadius.only(
            //   topLeft: Radius.circular(selectBtn == 0 ? 0.0 : 20.0),
            //   topRight:
            //       Radius.circular(selectBtn == navBtn.length - 1 ? 0.0 : 20.0),
            // ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // SizedBox(width: 1.w),
              // Spacer(),
              RotatedBox(
                  quarterTurns: 1,
                  child: InkWell(
                    onTap: () {
                      print("Toggle drawer");
               ZoomDrawer.of(context)!.open();
                      setState(() {});
                    },
                    child:Padding(
                      padding: const EdgeInsets.only(top:20.0),
                      child: Image.asset('assets/icons/pro1.png',height: 3.h,color: Colors.white,),
                    )),

                  ),
              for (int i = 0; i < navBtn.length; i++)
                GestureDetector(
                  onTap: () => setState(() => selectBtn = i),
                  child: iconBtn(i),
                ),
            ],
          ),
        ));
  }
  SizedBox iconBtn(int i) {
    bool isActive = selectBtn == i ? true : false;
    var height = isActive ? 60.0 : 0.0;
    var width = isActive ? 50.0 : 0.0;
    return SizedBox(
      // width: 75.0,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: AnimatedContainer(
              height: height,
              width: width,
              duration: const Duration(milliseconds: 600),
              child: isActive
                  ? CustomPaint(
                      painter: ButtonNotch(),
                    )
                  : const SizedBox(),
            ),
          ),
          // RotatedBox(
          //     quarterTurns: 3,
          //     child: Align(
          //       alignment: Alignment.center,
          //       child: Image.asset(
          //         navBtn[i].imagePath,
          //         color: isActive ? selectColor : black,
          //         scale: 2,
          //       ),
          //     )),
          RotatedBox(
              quarterTurns: 2,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      navBtn[i].name,
                      style: isActive
                          ? bntText.copyWith(color: Colors.white)
                          : bntText,
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}