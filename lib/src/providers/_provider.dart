import 'package:ezformulas/src/providers/units.dart';
import 'package:flutter/material.dart';

class CourseArguments {
  String title;
  List<ContentArguments> contents;

  CourseArguments({
    required this.title,
    required this.contents,
  });
}

class ContentArguments {
  String title;

  ContentArguments({
    required this.title,
  });
}

class FormulaArguments {
  Map<String, List>? formulas;
  Color? tilesColor;

  FormulaArguments({this.formulas, this.tilesColor});
}

class FormulaButtonArguments {
  Map<Param, double>? params;
  double Function(Map<Param, double> m)? formula;
  String? pageName;
  bool? bIsTriangle;
  List<String>? resultsSystem;
  Unit? resultUnit;
  double? selectedResultUnit;
  Color? triangleColor;

  FormulaButtonArguments({
    this.params,
    this.formula,
    this.pageName,
    this.bIsTriangle = false,
    this.resultsSystem = const ['', '', ''],
    this.resultUnit,
    this.selectedResultUnit = 1,
    this.triangleColor = Colors.purple,
  });
}

class Param {
  String? name;
  Unit? med;
  double? selectedMed;

  Param({this.name, this.med, this.selectedMed = 1});

  double getValue(double input) {
    double v = input * selectedMed!;
    print('my' + v.toString());
    return v;
  }

  double temp(double input) {
    switch (selectedMed!.toInt()) {
      case 1:
        return input;
      case 2:
        return input + 273.15;
      case 3:
        return (input - 32) * 5 / 9 + 273.15;
        break;
      default:
        return 0.0;
    }
  }
}
