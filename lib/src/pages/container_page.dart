import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contenedores'),
      ),
      body: Container(
        child: Center(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.teal[200],
            child: Center(
                child: Text(
              'Hola soy un texto',
              style: TextStyle(color: Colors.white),
            )),
          ),
        ),
      ),
    );
  }
}
