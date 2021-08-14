import 'package:ezformulas/src/providers/_provider.dart';
import 'package:ezformulas/src/widgets/floating_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContentPage extends StatefulWidget {
  ContentPage();

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final args = ModalRoute.of(context)!.settings.arguments as List;
    ContentArguments content = args[0];
    Color color = args[1];

    double size = MediaQuery.of(context).size.aspectRatio;
    double h = MediaQuery.of(context).size.height;

    return Container(
      child: Scaffold(
        floatingActionButton: FloatingButton(Alignment(1.5, 0)),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            content.title,
            style: TextStyle(color: color, fontSize: h * 0.05),
          ),
          toolbarHeight: h * 0.1,
          foregroundColor: Colors.transparent,
        ),
        body: ListView(
          children: createFormulas(content, size),
        ),
      ),
    );
  }

  List<Widget> createFormulas(ContentArguments args, double size) {
    double h = MediaQuery.of(context).size.height;

    List<Widget> contentTiles = [];

    args.formulas.formulas.forEach((key, value) {
      final tempTile = FormulaTileWidget(
        title: key,
        image: value[0],
        params: value[1],
        button: value[2],
        cardColor: args.ftColor,
        buttonColor: args.formulas.tilesColor,
      );

      contentTiles.add(tempTile);
    });

    return contentTiles;
  }
}
