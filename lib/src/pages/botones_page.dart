import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botones'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  print('Click');
                },
                color: Colors.pink,
                child: Text(
                  'Evelyn',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              FlatButton(
                onPressed: () {
                  print('Click');
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                color: Colors.green,
                child: Text(
                  'Valles',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.settings),
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.amber,
                child: Text('Click'),
              )
            ], //fin de Widget[]
          ), //fin de Column
        ), //fin de Container
      ), //fin de body
    ); //fin de Scaffold
  } //fin de Widget
} //fin de botones page
