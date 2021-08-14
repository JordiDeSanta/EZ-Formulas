import 'package:ezformulas/src/providers/_provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

final physics = CourseArguments(
  title: 'Física',
  contents: [
    ContentArguments(
      title: 'Ondas',
      icon: Typicons.waves,
      formulas: [
        FormulaArguments(
          char: 'T',
          name: 'Periódo',
          svgRoute: 'assets/formulas/physics/Periodo.svg',
        ),
      ],
    ),
  ],
);
