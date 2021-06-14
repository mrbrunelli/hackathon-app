import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class Picture {
  static Widget create(String path, {double w, double h}){
    return Image(
      image: AssetImage(path),
      fit: BoxFit.cover,
      width: w,
      height: h,
    );
  }

  static Widget createLink(String link, {double w, double h}){
    return FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image: link,
        width: w,
        height: h,
    );
  }
}