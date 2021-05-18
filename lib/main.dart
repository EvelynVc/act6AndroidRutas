import 'package:flutter/material.dart';
import 'package:eve/src/pages/alert_page.dart';
import 'package:eve/src/pages/botones_page.dart';
import 'package:eve/src/pages/cards_page.dart';
import 'package:eve/src/pages/circle_page.dart';
import 'package:eve/src/pages/container_page.dart';
import 'package:eve/src/pages/formularios_page.dart';
import 'package:eve/src/pages/home_page.dart';
import 'package:eve/src/pages/imagenes_page.dart';
import 'package:eve/src/pages/listview_page.dart';
import 'package:eve/src/pages/stack_page.dart';

void main() => runApp(EveApp());

class EveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eve Master',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'botones': (BuildContext context) => BotonesPage(),
        'container': (BuildContext context) => ContainerPage(),
        'stack': (BuildContext context) => StackPage(),
        'image': (BuildContext context) => ImagenesPage(),
        'cards': (BuildContext context) => CardsPage(),
        'circle': (BuildContext context) => CirclePage(),
        'alert': (BuildContext context) => AlertPage(),
        'form': (BuildContext context) => FormulariosPage(),
        'list': (BuildContext context) => ListViewPage(),
      },
    );
  }
}
