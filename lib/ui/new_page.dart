import 'package:flutter/material.dart';
import 'package:hackathon_app/widgets/data_list.dart';
import 'package:hackathon_app/widgets/picture.dart';
import 'package:hackathon_app/widgets/title_bar.dart';
import 'package:hackathon_app/functions.dart';

class NewPage extends StatefulWidget {
  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: TitleBar.create("Carros Novos", icon: Icons.directions_car_outlined, color: Theme.of(context).accentColor),
      body: Column(
        children: <Widget>[
          Expanded(
            child: FutureBuilder(
              future: Functions.getJson(
                  "http://172.29.16.1:8085/api/vehicle/new"),
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
                      return DataList.create(context, snapshot, Functions.NEW_LIST);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
