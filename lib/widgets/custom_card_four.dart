import 'package:flutter/material.dart';

class CustomCardFour extends StatelessWidget {
  String title;
  Color color;
  CustomCardFour(this.title, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 30,
              spreadRadius: 1,
              offset: const Offset(2, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.calendar_month, color: Colors.black),
                    Text(
                      '2 hours ago',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 120.0,
                  height: 40.0,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0.0,
                        child: Image.asset('assets/avatar.png'),
                      ),
                      Positioned(
                        left: 20.0,
                        child: Image.asset('assets/avatar.png'),
                      ),
                      Positioned(
                        left: 40.0,
                        child: Image.asset('assets/avatar.png'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
