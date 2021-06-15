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
                            RichText(
                              textAlign: TextAlign.justify,
                              text: new TextSpan(
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF2f3542),
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            "    Empresa de venda de carros  "),
                                    TextSpan(
                                      text: "novos e seminovos",
                                      style:
                                          Theme.of(context).textTheme.headline4,
                                    ),
                                    TextSpan(
                                        text:
                                            ", principalmente da marca Cherry."),
                                    TextSpan(
                                        text:
                                            "\n\n    Nossos clientes compartilham sua felicidade conosco, e isso nos move. Por isso dê valor ao seu carro, não "
                                            "pelo quanto ele vale, mas pelo o que ele significa para você."),
                                  ]),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                              child: Column(
                                children: [
                                  Text("Equipe",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1),
                                  GestureDetector(
                                    onTap: () {
                                      _github("janferracini");
                                    },
                                    child: Card(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 8),
                                        child: Row(
                                          children: [
                                            Picture.circleImage(
                                                "images/janaina.png"),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      20, 0, 0, 0),
                                              child: Text("@janferracini"),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      _github("mrbrunelli");
                                    },
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
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      20, 0, 0, 0),
                                              child: Text("@mrbrunelli"),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      _github("raquelmacd");
                                    },
                                    child: Card(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 8),
                                        child: Row(
                                          children: [
                                            Picture.circleImage(
                                                "images/raquel.png"),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      20, 0, 0, 0),
                                              child: Text("@raquelmacd"),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                    )
                  ],
                ),
              ],
            ),
          )
          )
        ],
      ),
    );
  }
}
