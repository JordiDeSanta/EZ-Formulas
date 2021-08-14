import 'package:ezformulas/src/providers/_provider.dart';
import 'package:flutter/material.dart';

class FormulaTileWidget extends StatelessWidget {
  FormulaArguments settings;
  Color color;

  FormulaTileWidget({required this.settings, required this.color});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    double size = MediaQuery.of(context).size.aspectRatio;
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Padding(
      padding:
          EdgeInsets.only(left: w * 0.025, right: w * 0.025, bottom: h * 0.025),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0.0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(colorScheme.primary),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: size * 40),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: size * 40),
                width: size * 450,
                child: Text(
                  settings.name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: color),
                ),
              )
            ],
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, 'formula', arguments: [settings, color]);
        },
      ),
    );
  }
}
