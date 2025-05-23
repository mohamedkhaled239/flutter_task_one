import 'package:flutter/material.dart';
import 'package:flutter_lab_1/screens/screen4.dart';
import 'package:flutter_lab_1/screens/screen5.dart';

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
      home: Screen4(),
    );
  }
}
