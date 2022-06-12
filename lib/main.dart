import 'package:flutter/material.dart';

import 'screen/home/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: const Color(0xfff5f6f6),
        primaryColor: const Color(0xff811b83),
        colorScheme: const ColorScheme.light(
          secondary: Color(0xfffa5819),
        ),
        textTheme: TextTheme(
          headline1: const TextStyle(
            color: Color(0xff100e34),
          ),
          bodyText1: TextStyle(
            color: const Color(0xff100e34).withOpacity(0.5),
          ),
        ),
      ),
      home: const HomePage(),
    ),
  );
}
