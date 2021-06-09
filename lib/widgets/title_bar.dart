import 'package:flutter/material.dart';

import '../functions.dart';

class TitleBar {
  static Widget create(String title, {IconData icon, centerTitle = true, Color color}){
    return AppBar(
      title: Container(
        child: Row(
          children: [
            Functions.createIcons(icon),
            Text(title),
          ],
        ),
      ),
      centerTitle: centerTitle,
    );
  }

}