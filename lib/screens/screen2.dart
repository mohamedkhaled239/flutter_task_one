import 'package:flutter/material.dart';
import 'package:flutter_lab_1/widgets/custom_cardthree.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, size: 40),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.search, size: 40),
                  onPressed: () {},
                ),
              ],
            ),
            CustomCardThree(
              '13/13 Tasks - 100%',
              'VR Course',
              'assets/(1).png',
              Color(0xFF61DE70),
            ),
            SizedBox(height: 20),
            CustomCardThree(
              '2/8 Tasks - 35%',
              'Community',
              'assets/(2).png',
              Color(0xff19173D),
            ),
            SizedBox(height: 20),

            CustomCardThree(
              '4/7 Tasks - 57%',
              'SMM Course',
              'assets/(3).png',
              Color(0xFF9327f0),
            ),
          ],
        ),
      ),
    );
  }
}
