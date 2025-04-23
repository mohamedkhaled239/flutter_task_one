import 'package:flutter/material.dart';
import 'package:flutter_lab_1/widgets/custom_card_four.dart';
import 'package:flutter_lab_1/widgets/custom_category.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, size: 35),
                      onPressed: () {},
                    ),
                    Text(
                      "Tayo’s Projects",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add, size: 35),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomCategory('all ', '17', Color(0xff0DA6C2)),
                      const SizedBox(width: 10),
                      CustomCategory('To Do ', '17', Color(0xff7B78AA)),
                      const SizedBox(width: 10),

                      CustomCategory('In Progress ', '17', Color(0xffFFC239)),
                      const SizedBox(width: 10),

                      CustomCategory('Bonus point ', '17', Color(0xffD9D9D9)),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                CustomCardFour("Create Ad Banner", Color(0xff9327F0)),
                const SizedBox(height: 10),

                CustomCardFour("Create New Blog Post", Color(0xffFFC239)),
                const SizedBox(height: 10),

                CustomCardFour("Online Course", Color(0xff7B78AA)),
                const SizedBox(height: 10),
                CustomCardFour("Online Course", Color(0xff7B78AA)),
                const SizedBox(height: 10),
                CustomCardFour("Online Course", Color(0xff7B78AA)),
                const SizedBox(height: 10),
                CustomCardFour("Complete Portfolio", Color(0xffD9D9D9)),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
