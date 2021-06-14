import 'package:flutter/material.dart';
import 'package:hackathon_app/ui/about_page.dart';
import 'package:hackathon_app/ui/new_page.dart';
import 'package:hackathon_app/ui/used_page.dart';
import 'package:hackathon_app/widgets/data_list.dart';
import 'package:hackathon_app/widgets/drawer_bar.dart';
import 'package:hackathon_app/widgets/picture.dart';
import 'package:hackathon_app/widgets/title_bar.dart';
import 'package:hackathon_app/functions.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    List<Map> itensList = [
      {"text" : "Carros Novos", "icon" : "", "event" : _listNew},
      {"text" : "Carros Usados", "icon" : "", "event" : _listUsed},
      {"text" : "Sobre Nós", "icon" : "", "event" : _about},
    ];

    return Scaffold(
      appBar: TitleBar.create("JacCar", icon: Icons.directions_car_outlined, color: Theme.of(context).accentColor),
      drawer: DrawerBar.create(
        context, Theme.of(context).primaryColor, itensList, path: "images/logo-transparent.png", h: 137,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: FutureBuilder(
              future: Functions.getJson(
                  "http://172.29.16.1:8085/api/vehicle"),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                  case ConnectionState.none:
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Picture.create("images/logo.png", w: 300),
                        Text("Carregando, agruarde..."),
                      ],
                    ),
                  );
                  default:
                    if (snapshot.hasError)
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Picture.create("images/logo.png", w: 300),
                            Text("Não foi possível acessar"),
                          ],
                        ),
                      );
                    else
                       return DataList.create(context, snapshot, Functions.ALL_LIST);
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  void _listNew(){
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => NewPage()
    ));
  }
  void _listUsed(){
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => UsedPage()
    ));
  }
  void _about(){
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => AboutPage()
    ));
  }
}

