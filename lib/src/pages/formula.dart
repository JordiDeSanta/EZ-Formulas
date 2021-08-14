import 'package:ezformulas/src/providers/_provider.dart';
import 'package:ezformulas/src/widgets/floating_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class FormulaPage extends StatefulWidget {
  FormulaPage();

  @override
  _FormulaPageState createState() => _FormulaPageState();
}

class _FormulaPageState extends State<FormulaPage> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as List;
    FormulaArguments formula = args[0];
    Color color = args[1];

    double size = MediaQuery.of(context).size.aspectRatio;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      floatingActionButton: FloatingButton(Alignment(1.5, 0)),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: color,
        ),
        elevation: 0.0,
        title: Text(
          formula.name,
          overflow: TextOverflow.fade,
          style: TextStyle(color: color, fontSize: h * 0.05),
        ),
        centerTitle: true,
        toolbarHeight: h * 0.1,
      ),
      body: ListView(
        children: [
          SvgPicture.asset(
            formula.svgRoute,
          ),
          /*_createParams(content, pageColor),
          _result(content, pageColor, size),
          SizedBox(height: size * 20),
          if (banner == null && !content.bIsTriangle)
            Container()
          else
            Container(
              height: h * 0.2,
              child: AdWidget(
                ad: banner,
              ),
            )
            */
        ],
      ),
    );
  }
}
