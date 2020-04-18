import 'package:cursoflutterseccion6/pages/alert_page.dart';
import 'package:cursoflutterseccion6/utils/icono_string_util.dart';
import 'package:flutter/material.dart';
import 'package:cursoflutterseccion6/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example'),
      ),
      body: _lista(context),
    );
  }

  Widget _lista(BuildContext context) {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      builder: (context, AsyncSnapshot<List<dynamic>> snapShot) {
        return ListView(
          children: _listaItems(snapShot.data, context),
        );
      }
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context){
    final List<Widget> opciones = [];

    data.forEach((opt) {

      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.lightBlue),
        onTap: (){
          Navigator.pushNamed(context, opt['ruta']);
        },
      );

      opciones..add(widgetTemp)
              ..add(Divider());
      },
    );

    return opciones;
  }
}