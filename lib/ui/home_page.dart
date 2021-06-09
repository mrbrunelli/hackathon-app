import 'package:flutter/material.dart';
import 'package:hackathon_app/widgets/title_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: TitleBar.create("Carros Novos e Usados"),

    );
  }

}

