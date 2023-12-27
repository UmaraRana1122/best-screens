import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/screens/task7/mapSample2.dart';
import 'package:task1/screens/task7/homeScreen.dart';
import 'package:task1/screens/task7/filterSelection.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int index = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          height: 10.h,
          width: 100.w,
          decoration: BoxDecoration(color: Color(0xffFFFFFF)),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: index == 0
                        ? Image.asset("assets/icons/fh.png", height: 2.5.h)
                        : Image.asset(
                            "assets/icons/home11.png",
                            height: 2.5.h,
                          )),
                InkWell(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: index == 1
                        ? Image.asset("assets/icons/home22.png", height: 2.5.h)
                        : Image.asset(
                            "assets/icons/option.png",
                            height: 2.5.h,
                          )),
                InkWell(
                    onTap: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    child: Image.asset("assets/icons/home33.png",
                        color: index == 2 ? Colors.black : Colors.black12,
                        height: 2.5.h)),
              ],
            ),
          ),
        ),
        body: index == 0
            ? MyHomeScreen7()
            : index == 1
                ? MapSample2()
                : index == 2
                    ? FilterSelection()
                    : MapSample2());
  }
}




                  
                 
              
                  
                
//     ),