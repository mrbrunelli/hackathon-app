import 'package:flutter/material.dart';
import 'package:hackathon_app/widgets/data_list.dart';
import 'package:hackathon_app/widgets/picture.dart';
import 'package:hackathon_app/widgets/title_bar.dart';
import 'package:hackathon_app/functions.dart';

class UsedPage extends StatefulWidget {
  @override
  _UsedPageState createState() => _UsedPageState();
}

class _UsedPageState extends State<UsedPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: TitleBar.create("Carros Usados", icon: Icons.directions_car_outlined, color: Theme.of(context).accentColor),
      body: Column(
        children: <Widget>[
          Expanded(
            child: FutureBuilder(
              future: Functions.getJson(
                  "http://172.29.16.1:8085/api/vehicle/used"),
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
                      return DataList.create(context, snapshot, Functions.USED_LIST);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}