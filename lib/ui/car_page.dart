import 'package:flutter/material.dart';
import 'package:hackathon_app/functions.dart';
import 'package:hackathon_app/widgets/picture.dart';
import 'package:hackathon_app/widgets/title_bar.dart';

class CarPage extends StatelessWidget {

  final Map detailsCar;
  CarPage(this.detailsCar);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleBar.create(detailsCar["model"]),
      body: Column(
        children: [
          Expanded(child:
            Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListView(
                children: [
                  Column(
                    children: [
                      Text(detailsCar["model"].toString(), style: Theme.of(context).textTheme.headline1),
                    ],
                  ),
                  Column(
                    children: [
                      Picture.create(
                          Functions.imgLink(detailsCar["photo"].toString())
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(detailsCar["brand"].toString(), style: Theme.of(context).textTheme.headline1),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(detailsCar["model"].toString(), style: Theme.of(context).textTheme.headline4),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(detailsCar["yearmodel"].toString() + "/"
                          + detailsCar["yearmanufacture"].toString()
                          + " " + detailsCar["color"].toString(),
                          style: Theme.of(context).textTheme.subtitle2
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(detailsCar["optionals"].toString(), style: Theme.of(context).textTheme.bodyText2),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          Functions.getCurrency(detailsCar["price"]), style: Theme.of(context).textTheme.headline1,
                        ),
                      ],
                    ),
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
