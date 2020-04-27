import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ) ,
      body: Center(
        child: RaisedButton(
          onPressed: () => _showAlert(context),
          child: Text('Mostrar alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: () {Navigator.pop(context);}
      ),
    );
  }

  void _showAlert(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Contenido de la alerta'),
            ],
          ),
          actions: <Widget>[
            FlatButton(
                onPressed: ()  => Navigator.of(context).pop(),
                child: Text('Cancelar')
            ),
            FlatButton(
                onPressed: ()  => Navigator.of(context).pop(),
                child: Text('Ok')
            )
          ],
        );
      }
    );
  }
}