import 'package:flutter/material.dart';
import 'package:hackathon_app/ui/about_page.dart';
import 'package:hackathon_app/widgets/drawer_bar.dart';
import 'package:hackathon_app/widgets/title_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {


    List<Map> itensList = [
      {"text" : "Carros Novos", "icon" : "", "event" : _listNewer},
      {"text" : "Carros Usados", "icon" : "", "event" : _listUsed},
      {"text" : "Sobre Nós", "icon" : "", "event" : _about},
    ];

    return Scaffold(
      appBar: TitleBar.create("Carros Novos e Usados", color: Theme.of(context).accentColor),
      drawer: DrawerBar.create(
        context, Theme.of(context).primaryColor, itensList, path: "images/logo-transparent.png", h: 137,
      ),
      body: Container(


      ),
    );
  }

  void _listNewer(){}
  void _listUsed(){}
  void _about(){
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => AboutPage()
    ));
  }
}

