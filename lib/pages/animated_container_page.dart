import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated container'),
      ),
      body:
        Center(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            curve: Curves.fastOutSlowIn,
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              borderRadius: _borderRadius,
              color: _color,
            ),
          ),
        ),
      floatingActionButton:
        FloatingActionButton(
          onPressed: _changeContainerDimensions,
          child: Icon(Icons.play_circle_filled),
        ),
    );
  }

  void _changeContainerDimensions(){
    final random = Random();

    setState(() {
      _width = random.nextInt(200).toDouble();
      _height = random.nextInt(200).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(200),
          random.nextInt(200),
          random.nextInt(200),
          1);
    });
  }
}
