import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyView1 extends StatelessWidget {
  const MyView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leadingWidth: 14.w,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            color: Colors.black12,
            child: Icon(
              Icons.arrow_back_ios,
              size: 2.2.h,
            ),
          ),
        ),
        backgroundColor: Color(0xff1f2125),
        title: Image.asset(
          "assets/logo/app_logo.png",
          height: 5.h,
        ),
      ),
      backgroundColor: const Color(0xff1f2025),
      body: Stack(
        children: [
          Container(),
          Container(
            height: 12.h,
            width: 100.w,
            decoration: const BoxDecoration(
                color: Color(0xff30d8e3),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  'New Message',
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
           
                
                Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
               Positioned(
                  bottom: 0,
                  child: Container(
                    height: 80.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: Color(0xff202126),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        )),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          
                          children: [
                            SizedBox(height: 5.h,),
                            ClipRRect(
                              // borderRadius: BorderRadius.circular(15),
                              child: TextField(
                                                    style: TextStyle(color: Color(0xffdcdcdd)),
                                                    decoration: InputDecoration(
                                                      //NOTE -  To Color TextField first enable Filled Color Property TRUE then filleColors:me add the Required Color                                                       filled: true,
                                                      fillColor: Colors.black,
                                                      filled: true,
                                                      //Color Properties

                              enabledBorder:OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff7a7b7e),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              hintText: 'Search here',
                              prefixIcon: Icon(Icons.search,color: Color(0xff989a9d),),
                              hintStyle: TextStyle(color: Color(0xff949799))),
                                                ),
                            ),
                    SizedBox(height: 2.h,),
                    Container(
                      height: 60.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                  color: Color(0xff202126),
                  ),
                  
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemBuilder: ((context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical:4.0),
                    child: ListTile(
                      minLeadingWidth: 0,
                      leading: Container(
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/1st.jpeg",height: 6.h ,width: 5.4.h,)),
                        )),
                        title: Text("Talha Anjum",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                        ),
                        ),
                        subtitle: Text("@younstuner",
                        style: TextStyle(
                          color: Colors.grey
                        ),
                        ),

                    ),
                  ) )),
           
                    ),
                    
                          ],
                          
                        ),
                        
                      ),  
                  ),
                ),
        ],
      ),
    );
  }
}
