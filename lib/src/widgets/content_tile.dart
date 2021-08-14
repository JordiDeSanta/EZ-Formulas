import 'package:ezformulas/src/providers/_provider.dart';
import 'package:flutter/material.dart';

class ContentTileWidget extends StatelessWidget {
  ContentArguments settings;
  Color color;

  ContentTileWidget({required this.settings, required this.color});

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.aspectRatio;
    double h = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: size * 10, horizontal: size * 10),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0.0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(color),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: size * 40),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: size * 40),
                width: size * 450,
                child: Text(
                  'a',
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
