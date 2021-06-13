import 'package:flutter/material.dart';
import 'package:hackathon_app/widgets/picture.dart';
import 'package:hackathon_app/widgets/title_bar.dart';

class AboutPage extends StatelessWidget {
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
                    Picture.create("images/on-road.png", w: 300),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.5),
                              child: Text(
                                "Nossa Cultura",
                                style: Theme.of(context).textTheme.headline1, textAlign: TextAlign.left,
                              ),
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: new TextSpan(
                                  style: TextStyle(
                                      fontSize: 18, color: Color(0xFF2f3542), ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            "    Nós acreditamos que sonhos podem se tornar realidade. Por isso nós estamos a mais de "),
                                    TextSpan(
                                      text: "30 anos ",
                                      style: Theme.of(context).textTheme.headline4,
                                    ),
                                    TextSpan(
                                        text:
                                            "no mercado de venda de automóveis "),
                                    TextSpan(
                                      text: "novos e seminovos",
                                      style: Theme.of(context).textTheme.headline4,
                                    ),
                                    TextSpan(
                                        text:
                                            ". \nNossos clientes compartilham sua felicidade conosco, e isso nos move. Por isso dê valor ao seu carro, não "
                                            "pelo quanto ele vale, mas pelo o que ele significa para você."),
                                  ]),
                            ),
                          ],
                        ))
                  ],
                ),
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.5),
                              child: Text(
                                "Nossos Valores",
                                style: Theme.of(context).textTheme.headline1,
                                textAlign: TextAlign.left,
                              ),
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: new TextSpan(
                                  style: TextStyle(
                                    fontSize: 18, color: Color(0xFF2f3542), ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                        "        Nossos clientes são nosso bem mais precioso. E por conta disso, nós já atendemos mais de "),
                                    TextSpan(
                                      text: "50.000 clientes ",
                                      style: Theme.of(context).textTheme.headline4,
                                    ),
                                    TextSpan(
                                        text:
                                        "clientes em todo o Brasil. Podemos dizer que nossos clientes são nossos melhores amigos, e fazemos de tudo "
                                            "para essa amizade ser duradoura."),

                                  ]),
                            ),
                          ],
                        ))
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
