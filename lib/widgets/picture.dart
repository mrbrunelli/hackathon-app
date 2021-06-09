import 'package:flutter/material.dart';

class Picture {
  static Widget create(String path, {double w, double h}){
    return Image(
      image: AssetImage(path),
      fit: BoxFit.cover,
      width: w,
      height: h,
    );
  }
}