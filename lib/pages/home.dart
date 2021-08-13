import 'package:circular_menu/circular_menu.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.aspectRatio;
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: FabCircularMenu(
        alignment: Alignment.center,
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                print('Home');
              }),
          IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                print('Favorite');
              })
        ],
      ),
    );
  }
}
