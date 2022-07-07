import 'package:crypto_currency/screens/intro.dart';
import 'package:crypto_currency/shared/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    MaterialColor kPrimaryColor = const MaterialColor(0xFFEFA803, <int, Color>{
      50: mainColor,
      100: mainColor,
      200: mainColor,
      300: mainColor,
      400: mainColor,
      500: mainColor,
      600: mainColor,
      700: mainColor,
      800: mainColor,
      900: mainColor,
    });
    return MaterialApp(
      title: 'Crypto Currency',
      theme: ThemeData(
        primarySwatch: kPrimaryColor,
      ),
      home: const Intro(),
    );
  }
}


