import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/exclude.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 320,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black38, width: 1),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.mail,
                              color: Color(0xff1e3a7b),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Enter email here',
                              style: TextStyle(
                                  color: Color(0xff747575), fontSize: 18.0),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    Container(
                      height: 50.0,
                      width: 320,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black38, width: 1),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.lock,
                              color: Color(0xff1e3a7b),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Enter password here',
                              style: TextStyle(
                                  color: Color(0xff747575), fontSize: 18.0),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 35.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    height: 55,
                    width: 320,
                    decoration: const BoxDecoration(
                      color: Color(0xff1e3a7b),
                      borderRadius: BorderRadius.all(
                        Radius.circular(18.0),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont have an account?',
                      style: TextStyle(
                          color: Color.fromARGB(255, 64, 66, 66),
                          fontSize: 15.0),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      'Signup',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38, width: 1),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 35.0),
                        child: Row(
                          children: [
                            Image(
                                image: AssetImage(
                                  'assets/logo/google.png',
                                ),
                                height: 15,
                                width: 15),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Continue with Google',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 64, 66, 66),
                                  fontSize: 15.0),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              height: 95,
              width: 165,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/yel.png',
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.only(right: 90.0),
              child: Container(
                height: 118,
                width: 160,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/blue.png',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
