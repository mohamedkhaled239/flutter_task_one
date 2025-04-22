import 'package:flutter/material.dart';
import 'package:flutter_lab_1/Screen3.dart';
import 'package:flutter_lab_1/sceen1.dart';
import 'package:flutter_lab_1/screen2.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      home: Screen3(),
    );
  }
}
