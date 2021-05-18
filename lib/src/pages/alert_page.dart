import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> key = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(
        title: Text('Alertas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                showDialog(context: context, builder: (_) => mostrarAlerta2(context));
              },
              child: Text('Presioname'),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              color: Colors.amberAccent,
            ),
            FlatButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              color: Colors.red,
              onPressed: () {
                key.currentState.showSnackBar(SnackBar(
                  content: Text('Que le vaya bien profe'),
                ));
              },
              child: Text('Picame'),
            )
          ],
        ),
      ),
    );
  }

  Widget mostrarAlerta(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Hola',
        style: TextStyle(color: Colors.white),
      ),
      content: Text('No me piques tan feo :c', style: TextStyle(color: Colors.white)),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancelar'),
        ),
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Okay!'),
        )
      ],
    );
  }

  Widget mostrarAlerta2(BuildContext context) {
    return AlertDialog(
      title: Text('Hola', style: TextStyle(color: Colors.white)),
      elevation: 5,
      backgroundColor: Colors.indigoAccent[700],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      content: Text('Soy una alerta', style: TextStyle(color: Colors.white)),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancelar'),
        ),
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Okay!'),
        )
      ],
    );
  }
}
