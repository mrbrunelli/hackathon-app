import 'package:flutter/material.dart';

import '../functions.dart';

class Botao {
  static Widget create(String text, Function clique, {IconData icon, double buttonSize = 150.0}) {
    return ElevatedButton(
      child: Container(
        width: buttonSize,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Functions.createIcons(icon),
            Text(
              text,
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      onPressed: clique,
    );
  }
  
  static Widget botaoBarra(IconData icon, Function event){
    return IconButton(
      icon: Functions.createIcons(icon),
      onPressed: (event),
    );
  }

  static Widget botaoFloat(IconData icon, Function event){
    return FloatingActionButton(
      child: Functions.createIcons(icon),
      onPressed: event,
    );
  }
}