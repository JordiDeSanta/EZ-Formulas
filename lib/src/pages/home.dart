import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

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
        fabSize: 100,
        fabOpenIcon: Icon(LineIcons.brain, color: Colors.pink[300], size: 50),
        fabCloseIcon: Icon(LineIcons.brain, color: Colors.pink[300], size: 50),
        ringDiameter: w * 0.8,
        ringWidth: w * 0.2,
        ringColor: colorScheme.primary,
        alignment: Alignment.center,
        children: <Widget>[
          RawMaterialButton(
            child: Icon(
              LineIcons.infinity,
              size: 35,
              color: Color.fromARGB(255, 53, 183, 255),
            ),
            onPressed: () {},
          ),
          RawMaterialButton(
            child: Icon(
              LineIcons.flask,
              size: 35,
              color: Color.fromARGB(255, 112, 239, 222),
            ),
            onPressed: () {},
          ),
          RawMaterialButton(
            child: Icon(
              LineIcons.atom,
              size: 35,
              color: Color.fromARGB(255, 148, 117, 238),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
