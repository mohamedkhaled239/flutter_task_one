import 'package:flutter/material.dart';

class CustomCategory extends StatelessWidget {
  String label1;
  String label2;
  Color color;
  CustomCategory(this.label1, this.label2, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: color,

        borderRadius: BorderRadius.circular(50),
      ),
      height: 30,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(label1, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(label2, style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
