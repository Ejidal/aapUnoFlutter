import "package:flutter/material.dart";
import 'package:appUno/src/archivoDos.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ContadorPage(),
      ),//Center
    );//MaterialApp
  }//build
}//MyApp
                
