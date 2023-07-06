import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());


class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        disabledColor: Color(0xFF111328),
        highlightColor: Color(0xFFEB1555),
        canvasColor: Color(0xFF0A0E21),
        primaryColor: Color(0xFF1D1E33),
        textTheme: TextTheme(
          bodySmall: TextStyle(
              color: Colors.white,
              fontFamily: 'Gill Sans',
              fontWeight: FontWeight.w500,
              fontSize: 20),
          bodyLarge: TextStyle(
              color: Colors.white,
              fontFamily: 'Roboto Slab',
              fontWeight: FontWeight.w900,
              fontSize: 56),
          bodyMedium: TextStyle(
              color: Colors.white,
              fontFamily: 'Gill Sans',
              fontWeight: FontWeight.w500,
              fontSize: 40),
        ),
        appBarTheme: AppBarTheme(
          color: Color(0xFF0A0E21),
          shadowColor: Color(0x00000000),
          titleTextStyle: TextStyle(
              color: Colors.white,
              fontFamily: 'Gill Sans',
              fontWeight: FontWeight.w600,
              fontSize: 20),
        ),
      ),
      home: InputPage(),
    );
  }
}
