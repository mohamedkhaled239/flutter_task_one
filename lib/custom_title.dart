import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  String title;
  String label;

  CustomTitle(this.title, this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 10),
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(child: Text(label)),
        ),
      ],
    );
  }
}
