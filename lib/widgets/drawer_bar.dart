import 'package:flutter/material.dart';
import 'package:hackathon_app/functions.dart';

class DrawerBar {
  static Widget create(BuildContext context, String title, List<Map> itensList, {IconData titleIcon}){
    return Drawer(
      child: ListView(
        children: [
          _createBarTitle(title, titleIcon),
          _createListItens(context, itensList),
        ],
      ),
    );
  }

  static Widget _createBarTitle(String title, IconData titleIcon) {
    return DrawerHeader(
      child: Column(
        children: [
          Text(title, style: TextStyle(fontSize: 30),),
          Functions.createIcons(titleIcon, size:60),
        ],
      ),
    );
  }

  static Widget _createListItens(BuildContext context, List<Map> itensList) {
    var list = List<Widget>();
    for (var item in itensList) {
      list.add(_criarItem(context, item["text"], item["icon"], item["event"]));
    }
    return Column(children: list,);
  }

  static Widget _criarItem(BuildContext context, String text, IconData icon, Function event){
    return ListTile(
        title: Row(
          children: [
            Functions.createIcons(icon, size: 20),
            Text(text, style: TextStyle(fontSize: 20)),
          ],
        ),
        onTap: () {
          Navigator.pop(context);
          event();
        }
    );
  }
}