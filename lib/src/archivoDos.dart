import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloUno = new TextStyle(
      fontSize: 100, fontWeight: FontWeight.bold, color: Colors.black);
  final _estiloDos = new TextStyle(fontSize: 40, color: Colors.purple);
  final _estiloTres = new TextStyle(fontSize: 66, color: Colors.cyan);
  int _contador = 0;

  Widget _creaBoton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 40.0),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero, color: Colors.yellow),
            onPressed: _reset),
        Expanded(child: SizedBox(width: 60.0)),
        FloatingActionButton(
            child: Icon(Icons.remove, color: Colors.red),
            onPressed: _resta),
        SizedBox(width: 10.0),
        FloatingActionButton(
            child: Icon(Icons.add, color: Colors.green), onPressed: _suma),
        SizedBox(width: 10.0),
      ],
    );
  }

  void _suma() {
    setState(() {
      _contador++;
    });
  }

  void _resta() {
    setState(() {
      _contador--;
    });
  }

  void _reset() {
   setState(() => _contador = 0);
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('ChipoCluda', style: TextStyle(fontSize: 44)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Ropa de playa', style: _estiloDos),
            Text('ChipoCluda', style: _estiloTres),
            Text('$_contador', style: _estiloUno),
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: _creaBoton(),

      //setState(() {
      // _contador = _contador + 1;
    );
  }
}
