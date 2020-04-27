import 'package:cursoflutterseccion6/pages/alert_page.dart';
import 'package:cursoflutterseccion6/pages/animated_container_page.dart';
import 'package:cursoflutterseccion6/pages/avatar_page.dart';
import 'package:cursoflutterseccion6/pages/card_page.dart';
import 'package:cursoflutterseccion6/pages/home_page.dart';
import 'package:cursoflutterseccion6/pages/input_page.dart';
import 'package:cursoflutterseccion6/pages/list_builder_page.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return {
    '/'                 : (BuildContext context, ) => HomePage(),
    'alert'             : (BuildContext context, ) => AlertPage(),
    'avatar'            : (BuildContext context, ) => AvatarPage(),
    'card'              : (BuildContext context, ) => CardPage(),
    'animated_container': (BuildContext context, ) => AnimatedContainerPage(),
    'inputs'            : (BuildContext context, ) => InputPage(),
    'list'              : (BuildContext context, ) => ListPage(),
  };
}
