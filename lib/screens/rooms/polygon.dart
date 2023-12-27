import 'package:flutter/material.dart';


class HomePage99 extends StatefulWidget {
  const HomePage99({super.key});

  @override
  State<HomePage99> createState() => _HomePage99State();
}

class _HomePage99State extends State<HomePage99> {
   @override
     Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.green[300],
          automaticallyImplyLeading: false,
          title: Text("Flutter Polygon Clipper Demo"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
            
            ],
          ),
        ));
  }

}