import 'package:flutter/material.dart'; 

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 5.0),
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(height: 5.0),
          _cardTipo1(),
          SizedBox(height: 5.0),
          _cardTipo1(),
          SizedBox(height: 5.0),
          _cardTipo1(),
          SizedBox(height: 5.0),
          _cardTipo1(),
          SizedBox(height: 5.0),
          _cardTipo1(),
          SizedBox(height: 5.0),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 3.0,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Edu was here'),
            subtitle: Text('Aqui estamos con la descripcion de la tarjeta que de asdasdbjasd asnd sajksa dsajksa dsajk dsajk dsakj ds as'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Text('Cancelar')),
              FlatButton(onPressed: () {}, child: Text('Enviar'))
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
              placeholder: AssetImage('lib/assets/loading.gif'),
              image: NetworkImage('https://images.unsplash.com/photo-1500964757637-c85e8a162699?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb')
          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Esto es una prueba'))
        ],
      ),
    );
  }
}
