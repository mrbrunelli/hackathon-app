import 'package:flutter/material.dart';
import 'package:hackathon_app/widgets/picture.dart';

class DrawerBar {
  static Widget create(BuildContext context,Color bgColor, Color txtColor, List<Map> itensList, {String path, double w, double h}){
    return Drawer(
      child: Container(
        color: bgColor,
        child: ListView(
          children: [
            _createBarTitle( bgColor, txtColor, path, w, h),
            _createListItens(context, itensList),
          ],
        ),
      )
    );
  }

  static Widget _createBarTitle(Color bgColor, Color txtColor, String path, double w, double h) {
    return DrawerHeader(
        decoration: BoxDecoration(
          color: bgColor,
        ),
      child: Column(
        children: [
          Picture.create(path, h: h, w: w),
        ],
      ),
    );
  }

  static Widget _createListItens(BuildContext context, List<Map> itensList) {
    var list = List<Widget>();
    for (var item in itensList) {
      list.add(_criarItem(context, item["text"],  item["event"]));
    }
    return Column(children: list,);
  }

  static Widget _criarItem(BuildContext context, String text, Function event){
    return ListTile(
        title: Row(
          children: [
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