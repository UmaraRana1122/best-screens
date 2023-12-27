import 'package:flutter/material.dart';

class NeButton extends StatefulWidget {
  const NeButton({super.key});

  @override
  State<NeButton> createState() => _NeButtonState();
}

class _NeButtonState extends State<NeButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      child: Icon(
        Icons.apple,
        color: Colors.white,
        size: 80,
      ),
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade300,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              color: Colors.deepPurple.shade700,
              offset: Offset(5.0, 5.0),
              blurRadius: 15,
              spreadRadius: 1),
          BoxShadow(
              color: Colors.deepPurple.shade200,
              offset: Offset(-5.0, -5.0),
              blurRadius: 15,
              spreadRadius: 1),
        ],
        gradient: LinearGradient(
            colors: [
              Colors.deepPurple.shade200,
              Colors.deepPurple.shade400,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.1, 0.9]),
      ),
    );
  }
}