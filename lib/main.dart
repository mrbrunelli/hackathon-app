import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackathon_app/ui/home_page.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp]
  );
  runApp(MaterialApp(
    title: 'JacCar Veículos',
    home: HomePage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Color(0xFF2f3542),
      accentColor: Color(0xFFf9ca2d),
      fontFamily: 'Ubuntu',
      textTheme: TextTheme(
        bodyText1: TextStyle(fontSize: 16, color: Color(0xFFf1f2f6)),

        bodyText2: TextStyle(fontSize: 18, color: Color(0xFF2f3542)),
        subtitle1: TextStyle(fontSize: 18, color: Color(0xFF2f3542), fontWeight: FontWeight.bold),
        subtitle2: TextStyle(fontSize: 18, color: Color(0xFF57606f)),
        headline4: TextStyle(fontSize: 18, color: Color(0xFF57606f), fontWeight: FontWeight.bold),

        headline1: TextStyle(fontSize: 28, color: Color(0xFF2f3542), fontWeight: FontWeight.bold),
      ),
    ),
  ));
}