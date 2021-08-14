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
  IconData icon;
  List<FormulaArguments> formulas;

  ContentArguments({
    required this.title,
    required this.icon,
    required this.formulas,
  });
}

class FormulaArguments {
  String char;
  String name;
  String svgRoute;
  Map<Param, double> params;
  double Function(Map<Param, double> m) formula;

  FormulaArguments({
    required this.char,
    required this.name,
    required this.svgRoute,
    required this.params,
    required this.formula,
  });
}

class Param {
  String name;
  Unit med;
  double selectedMed;

  Param({
    required this.name,
    required this.med,
    required this.selectedMed,
  });

  double getValue(double input) {
    double v = input * selectedMed;
    return v;
  }

  double temp(double input) {
    switch (selectedMed.toInt()) {
      case 1:
        return input;
      case 2:
        return input + 273.15;
      case 3:
        return (input - 32) * 5 / 9 + 273.15;
      default:
        return 0.0;
    }
  }
}
