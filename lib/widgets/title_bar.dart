import 'package:flutter/material.dart';

import '../functions.dart';

class TitleBar {
  static Widget create(String title, {IconData icon, centerTitle = true}){
    return AppBar(
      title: Row(
        children: [
          Functions.createIcons(icon),
          Text(title),
        ],
      ),
      centerTitle: centerTitle,
    );
  }

}