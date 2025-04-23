import 'package:flutter/material.dart';
import 'package:flutter_lab_1/widgets/custom_card.dart';
import 'package:flutter_lab_1/widgets/custom_cardtwo.dart';
import 'package:flutter_lab_1/widgets/custom_title.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: const Icon(Icons.arrow_back),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      //   title: const Text('Screen 1'),
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello, Mo\nWelcome Back',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: const Icon(Icons.notifications_active),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF0DA6C2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Today',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '2/10 Tasks',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    Image.asset('assets/Group.png', height: 150, width: 100),
                  ],
                ),
              ),
              SizedBox(height: 10),
              // Row(
              //   children: [
              //     Text(
              //       'To Do',
              //       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //     ),
              //     SizedBox(width: 10),
              //     Container(
              //       height: 20,
              //       width: 20,
              //       decoration: BoxDecoration(
              //         color: Colors.grey,
              //         borderRadius: BorderRadius.circular(20),
              //       ),
              //       child: Center(child: Text('3')),
              //     ),
              //   ],
              // ),
              CustomTitle('To Do', '3'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomCard(
                      'Project',
                      'Redesign\nHomescreen',
                      '25th October 2029',
                    ),
                    CustomCard(
                      'Practise',
                      'Ux Research\nSample',
                      '17th July 2029',
                    ),
                    CustomCard(
                      'Duplicate',
                      'Blog Post\nDesign',
                      '21st Dec 2029',
                    ),
                    CustomCard('Demo', 'UI Testing\nModule', '5th Jan 2030'),
                  ],
                ),
              ),
              // Container(
              //   decoration: BoxDecoration(
              //     color: Colors.grey[200],
              //     borderRadius: BorderRadius.circular(50),
              //   ),
              //   height: 130,
              //   width: 150,
              //   child: Center(
              //     child: Column(
              //       children: [
              //         Text('Project'),
              //         SizedBox(height: 10),

              //         Text(
              //           'Redesign\nHomescreen',
              //           style: TextStyle(
              //             fontSize: 18,
              //             fontWeight: FontWeight.bold,
              //             color: Colors.black,
              //           ),
              //         ),
              //         SizedBox(height: 10),
              //         Text(
              //           '25th october 2029',
              //           style: TextStyle(color: Colors.grey),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              CustomTitle('In Progress', '3'),
              SizedBox(height: 10),
              CustomCardtwo(
                'Tommy max’s Project',
                'Create Ad Banner',
                '2 hours ago',
                '70%',
              ),
              SizedBox(height: 10),
              CustomCardtwo(
                'Personal Work',
                'Create New Blog Post',
                '2 hours ago',
                '45%',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
