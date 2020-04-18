import 'package:cursoflutterseccion6/pages/alert_page.dart';
import 'package:cursoflutterseccion6/pages/avatar_page.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes',
      initialRoute: '/',
      routes: <String, WidgetBuilder> {
        '/'     : (BuildContext context, ) => HomePage(),
        'alert' : (BuildContext context, ) => AlertPage(),
        'avatar': (BuildContext context, ) => AvatarPage(),
      },
    );
  }
}