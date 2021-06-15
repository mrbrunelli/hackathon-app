import 'package:flutter/material.dart';

class TitleBar {
  static Widget create(String title, { centerTitle = true, Color color}){
    return AppBar(
      title: Container(
        child: Column(
          children: [
            Text(title),
          ],
        ),
      ),
      centerTitle: centerTitle,
    );
  }

}