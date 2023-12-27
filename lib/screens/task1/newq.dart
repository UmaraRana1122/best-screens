import 'package:flutter/material.dart';

class Alpha extends StatelessWidget {
  const Alpha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 190,
                  height: 260,
                  decoration: const BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 190,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 168, 7, 255),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Container(
                  width: 190,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 168, 7, 255),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 190,
                  height: 260,
                  decoration: const BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
