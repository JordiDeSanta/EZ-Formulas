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
    double w = MediaQuery.of(context).size.width;

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
          Padding(
            padding: EdgeInsets.symmetric(vertical: h * 0.035),
            child: SvgPicture.asset(
              formula.svgRoute,
              color: color,
              fit: BoxFit.contain,
              width: w * 0.8,
            ),
          ),
          //_createParams(formula, color),
        ],
      ),
    );
  }

  Widget _createParams(FormulaButtonArguments args, Color pageColor) {
    List<Widget> _params = [SizedBox(height: 20.0)];
    double size = MediaQuery.of(context).size.aspectRatio;
    double w = MediaQuery.of(context).size.width;

    args.params.forEach(
      (key, value) {
        Widget _temp = Center(
          child: Column(
            children: [
              Container(
                width: w * 0.8,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: pageColor),
                    ),
                    labelText: key.name,
                    labelStyle:
                        TextStyle(color: pageColor, fontSize: size * 30),
                  ),
                  onChanged: (s) {
                    if (s == '') {
                      setState(() {
                        args.params[key] = 0.0;
                      });
                    } else {
                      setState(() {
                        double v = double.parse(s);
                        args.params[key] = v;
                      });
                    }
                  },
                ),
              ),
              if (key.med != null)
                Container(
                  width: w * 0.8,
                  height: size * 100,
                  child: DropdownButton(
                    items: _items(key.med, size),
                    value: key.selectedMed,
                    onChanged: (v) {
                      setState(() {
                        key.selectedMed = v;
                      });
                    },
                    style: TextStyle(color: pageColor),
                  ),
                ),
              SizedBox(height: size * 40),
            ],
          ),
        );
        _params.add(_temp);
      },
    );

    return Column(
      children: _params,
    );
  }
}
