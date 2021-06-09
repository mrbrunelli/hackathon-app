import 'package:flutter/material.dart';

class Functions {
  static Widget createIcons(IconData icon, {Color color, double size}){
    return icon != null ? _spaceIcon(icon, color, size) : Container();
  }

  static Widget _spaceIcon(IconData icon, Color color, double size){
    return Padding(
      padding: EdgeInsets.all(4),
      child: Icon(icon, color: color, size: size),
    );
  }
}