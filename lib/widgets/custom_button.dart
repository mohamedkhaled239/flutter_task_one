import 'package:flutter/material.dart';
import 'package:flutter_lab_1/screens/screen6.dart';

class CustomButton extends StatelessWidget {
  String text;
  Color color;
  CustomButton(this.text, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Screen6()),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,

        padding: EdgeInsets.symmetric(horizontal: 140, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
