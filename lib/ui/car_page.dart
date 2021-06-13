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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Picture.create(Functions.imgLink(detailsCar["photo"].toString()),)
        ],
      ),
    );
  }
}
