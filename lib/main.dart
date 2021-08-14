import 'package:ezformulas/src/pages/content.dart';
import 'package:ezformulas/src/pages/course.dart';
import 'package:ezformulas/src/pages/home.dart';
import 'package:ezformulas/src/providers/utils.dart';
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
        statusBarColor: colorScheme.background,
        systemNavigationBarColor: colorScheme.background,
        systemNavigationBarDividerColor: colorScheme.background,
      ),
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Utils()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'EZ Formulas',
        initialRoute: 'home',
        routes: {
          'home': (BuildContext context) => HomePage(),
          'course': (BuildContext context) => CoursePage(),
          'content': (BuildContext context) => ContentPage(),
        },
        theme: ThemeData(
          appBarTheme: AppBarTheme(elevation: 0, centerTitle: true),
          scaffoldBackgroundColor: colorScheme.background,
          primaryTextTheme: GoogleFonts.sansitaTextTheme(),
          colorScheme: colorScheme,
        ),
      ),
    );
  }
}
