import 'package:ezformulas/src/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final colorScheme = ColorScheme.dark().copyWith(
    background: Color.fromARGB(255, 17, 17, 17),
    primary: Color.fromARGB(255, 58, 58, 58),
  );

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: colorScheme.primary,
        systemNavigationBarColor: colorScheme.background,
        systemNavigationBarDividerColor: colorScheme.background,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EZ Formulas',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: colorScheme.background,
        textTheme: GoogleFonts.oswaldTextTheme(),
        colorScheme: colorScheme,
      ),
    );
  }
}
