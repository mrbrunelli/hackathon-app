import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackathon_app/ui/home_page.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp]
  );
  runApp(MaterialApp(
    title: 'Company Name',
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Color(0xFF57606f),
      accentColor: Color(0xFF25CCF7),
      // fontFamily: 'Verdana',

      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.pinkAccent,),
        bodyText1: TextStyle(fontSize: 23, color: Color(0xFF25CCF7)),
        headline6: TextStyle(color: Colors.green),
      ),


    ),
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}