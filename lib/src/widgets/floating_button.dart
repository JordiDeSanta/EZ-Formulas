import 'package:ezformulas/src/courses/math.dart';
import 'package:ezformulas/src/providers/_provider.dart';
import 'package:ezformulas/src/providers/utils.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';

class FloatingButton extends StatelessWidget {
  Alignment alignment;

  FloatingButton(this.alignment);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    final utils = Provider.of<Utils>(context);

    return FabCircularMenu(
      fabSize: 100,
      fabOpenIcon: Icon(LineIcons.brain, color: Colors.pink[300], size: 50),
      fabCloseIcon: Icon(LineIcons.brain, color: Colors.pink[300], size: 50),
      ringDiameter: w * 0.8,
      ringWidth: w * 0.2,
      ringColor: colorScheme.primary,
      alignment: alignment,
      children: <Widget>[
        RawMaterialButton(
          child: Icon(
            LineIcons.infinity,
            size: 35,
            color: utils.colors['Matemáticas'],
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'course', arguments: math);
          },
        ),
        RawMaterialButton(
          child: Icon(
            LineIcons.flask,
            size: 35,
            color: utils.colors['Química'],
          ),
          onPressed: () {},
        ),
        RawMaterialButton(
          child: Icon(
            LineIcons.atom,
            size: 35,
            color: utils.colors['Física'],
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
