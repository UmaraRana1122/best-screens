import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class ButtonNotch extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var dotPoint = Offset(size.width / 2, 2);
    var paint_1 = Paint()
      ..color = const Color(0xffffffff)
      ..style = PaintingStyle.fill;
    var paint_2 = Paint()
      ..color = const Color(0xFFDA3AB4)
      ..style = PaintingStyle.fill;
    var path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(7.5, 0, 12, 5);
    path.quadraticBezierTo(size.width / 2, size.height / 2, size.width - 12, 5);
    path.quadraticBezierTo(size.width - 7.5, 0, size.width, 0);
    path.close();
    canvas.drawPath(path, paint_1);
    canvas.drawCircle(dotPoint, 6, paint_2);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
class Model {
  final int id;
  final String imagePath;
  final String name;
  Model({
    required this.id,
    required this.imagePath,
    required this.name,
  });
}
List<Model> navBtn = [
  Model(id: 0, imagePath: 'assets/icon/home.png', name: 'Food'),
  Model(id: 1, imagePath: 'assets/icon/search.png', name: 'Products'),
  Model(id: 2, imagePath: 'assets/icon/heart.png', name: 'Pharmacy'),
  Model(id: 3, imagePath: 'assets/icon/notification.png', name: 'Services'),
  Model(id: 4, imagePath: 'assets/icon/user.png', name: 'Hotels'),
];
TextStyle bntText = TextStyle(
    color: Colors.white, fontWeight: FontWeight.w500, fontSize: 17.sp);
