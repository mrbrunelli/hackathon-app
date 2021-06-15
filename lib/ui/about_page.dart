import 'package:flutter/material.dart';
import 'package:hackathon_app/widgets/picture.dart';
import 'package:hackathon_app/widgets/title_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  Future<void> _github(String at) async {
    var github = "https://github.com/" + at;
    if (await canLaunch(github)) {
      await launch(github);
    } else {
      print('Impossível encontrar $github');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleBar.create("Sobre Nós"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: ListView(
              children: [
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Text("Equipe",
                                    style:
                                        Theme.of(context).textTheme.headline1),
                                Container(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                    child: Column(

                                      children:[ GestureDetector(
                                        onTap: () {
                                          _github("janferracini");
                                        },
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          child: Card(
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 8, vertical: 8),
                                              child: Row(
                                                children: [
                                                  Picture.circleImage(
                                                      "images/janaina.png"),
                                                  Padding(
                                                    padding: const EdgeInsets.fromLTRB(
                                                        20, 0, 0, 0),
                                                    child: Text("@janferracini",  style: Theme.of(context).textTheme.headline4),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                        GestureDetector(
                                          onTap: () {
                                            _github("mrbrunelli");
                                          },
                                          child: Container(
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                                            child: Card(
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(
                                                    horizontal: 8, vertical: 8),
                                                child: Row(
                                                  //mainAxisAlignment: MainAxisAlignment.end,
                                                  children: [
                                                    Picture.circleImage(
                                                        "images/matheus.png"),
                                                    Padding(
                                                      padding: const EdgeInsets.fromLTRB(
                                                          20, 0, 0, 0),
                                                      child: Text("@mrbrunelli", style: Theme.of(context).textTheme.headline4),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            _github("raquelmacd");
                                          },
                                          child: Container(
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                                            child: Card(
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(
                                                    horizontal: 8, vertical: 8),
                                                child: Row(
                                                  children: [
                                                    Picture.circleImage(
                                                        "images/raquel.png"),
                                                    Padding(
                                                      padding: const EdgeInsets.fromLTRB(
                                                          20, 0, 0, 0),
                                                      child: Text("@raquelmacd",  style: Theme.of(context).textTheme.headline4),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],),

                                  ),
                                )

                              ],
                            ),
                          ],
                        ))
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
