import 'package:flutter/material.dart';
import 'package:food_ui_challenge1/screens/challenge3/home3.dart';
import 'package:food_ui_challenge1/screens/challenge4/home4.dart';
import 'package:food_ui_challenge1/screens/challenge5/home5.dart';
import 'package:food_ui_challenge1/screens/challenge6%20shop/home6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home6(),
    );
  }
}

