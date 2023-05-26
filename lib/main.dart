import 'package:flutter/material.dart';
import 'input_page.dart';


void main() => runApp(BMICalculator());



class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        primaryColor: const Color(0x0ff0ae21),
        scaffoldBackgroundColor: const Color(0x0ff0ae21),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0x0ff0ae21),
        ),
      ),
      home: InputPage(),
    );
  }
}
