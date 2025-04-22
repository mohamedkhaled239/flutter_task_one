import 'package:flutter/material.dart';

class CustomCardThree extends StatelessWidget {
  String label1;
  String label2;
  String photoPath;
  Color color;
  CustomCardThree(this.label1, this.label2, this.photoPath, this.color);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        height: 200,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
                Text(
                  label1,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  label2,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            Column(
              children: [
                SizedBox(height: 20),
                Image.asset(photoPath, height: 150, width: 150),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
