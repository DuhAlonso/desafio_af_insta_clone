import 'package:desafio_insta_clone/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.black,
      iconTheme: const IconThemeData(color: Colors.white),
      textTheme: const TextTheme(
        headline6: TextStyle(color: Colors.white),
        headline5: TextStyle(color: Colors.white),
        headline4: TextStyle(color: Colors.white),
        headline3: TextStyle(color: Colors.white),
        headline2: TextStyle(color: Colors.white),
        headline1: TextStyle(color: Colors.white),
        bodyText1: TextStyle(color: Colors.white),
        bodyText2: TextStyle(color: Colors.white),
      ),
    ),
    debugShowCheckedModeBanner: false,
    home: const Home(),
  ));
}
