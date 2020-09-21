import 'package:flutter/material.dart';

//Archivo con la logica del la aplicación.

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}//ContadorPage


class _ContadorPageState extends State<ContadorPage> {

  int _contador = 0;

  final _estiloUno = new TextStyle(
      					 	fontSize: 160, 
							fontWeight: FontWeight.bold, 
							color: Colors.black);//TextStyle
  final _estiloDos = new TextStyle(
							fontSize: 40, 
							color: Colors.pink);//TextStyle
  final _estiloTres = new TextStyle(
							fontSize: 66, 
							color: Colors.cyan,
							fontWeight: FontWeight.bold);//TextStyle


  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('ChipoCluda', 
					style: TextStyle(
								fontSize:24,
								color: Colors.yellow),//TextStyle
			   ),//Text
      ),//AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Ropa de playa', 
				style: _estiloDos),
            Text('ChipoCluda', 
				style: _estiloTres),
            Text('$_contador', 
				style: _estiloUno),
          ],//<Widget>
        ),//Column
      ),//Center

      floatingActionButton: _creaBoton(),

    );//Scaffold
  }//build



  Widget _creaBoton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 40.0),

        FloatingActionButton(
			child: Icon(
						Icons.exposure_zero, 
						size:42.0, 
						color: Colors.yellow),//Icon
            	   onPressed: _reset),

        Expanded(
			child: SizedBox(width: 00.0)),//Expanded

        FloatingActionButton(
            child: Icon(
						Icons.remove, 
						size:42.0, 
						color: Colors.red),//Icon
            	   onPressed: _resta),

        SizedBox(width: 10.0),

        FloatingActionButton(
            child: Icon(
						Icons.add, 
						size:52.0, 
						color: Colors.green),//Icon
				   onPressed: _suma),

        SizedBox(width: 10.0),
      ],//<Widget>
    );//Row
  }//_creaBoton

  void _suma() {
    setState(() {
      _contador++;}
	  );//setState
  }//_suma

  void _resta() {
    setState(() {
      _contador--;
    });//setState
  }//_resta

  void _reset() {
   setState(() => _contador = 0);//setState
  }//_reset


}//_ContadorPagesState
