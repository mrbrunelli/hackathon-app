import 'package:flutter/material.dart';
import 'package:hackathon_app/functions.dart';
import 'package:hackathon_app/ui/car_page.dart';
import 'package:hackathon_app/widgets/picture.dart';

class DataListCars {

  static void clickItem(BuildContext context, Map datas){
    Navigator.push(context, MaterialPageRoute(builder: (context) => CarPage(datas)));
  }

  static Widget createItem(Map datas) {
    return Row(
      children: <Widget>[
        Flexible(child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(0, 3, 0, 0),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF2f3542))
                ),
                child: Column(
                  children: [
                    Picture.createLink(
                        Functions.imgLink(datas["photo"].toString())
                    ),
                  ],
                ),
              ),
              Text(
                datas["brand"].toString(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(datas["brand"].toString() + " - " + datas["model"].toString(), style: TextStyle(fontSize: 18)),
              Text(datas["yearmodel"].toString() + "/"+ datas["yearmanufacture"].toString() + " " + datas["color"].toString(), style: TextStyle(fontSize: 14, color: Color(0xFF57606f))),
              Text(
                Functions.getCurrency(datas["price"]), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}