import 'package:flutter/material.dart';
import 'package:hackathon_app/functions.dart';
import 'package:hackathon_app/widgets/data_list_cars.dart';


class DataList {
  static Widget create(BuildContext context, AsyncSnapshot snapshot, int type) {
    //snapshot contem os dados retornados
    return ListView.builder(
      padding: EdgeInsets.all(6),
      scrollDirection: Axis.vertical,
      itemCount: snapshot.data.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if( type == Functions.ALL_LIST) {
              DataListCars.clickItem(context, snapshot.data[index]);
            } else if( type == Functions.USED_LIST) {
              DataListCars.clickItem(context, snapshot.data[index]);
            } else if( type == Functions.NEW_LIST) {
              DataListCars.clickItem(context, snapshot.data[index]);
            }
          },
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: _retornaLista(type, snapshot.data[index]),
            ),
          ),
        );
      },
    );
  }

  static Widget _retornaLista(int tipo, Map data){
    switch (tipo) {
      case Functions.ALL_LIST:
        return DataListCars.createItem(data);
      case Functions.NEW_LIST:
        return DataListCars.createItem(data);
      case Functions.USED_LIST:
        return DataListCars.createItem(data);
      default:
        return Container();
    }
  }
}
