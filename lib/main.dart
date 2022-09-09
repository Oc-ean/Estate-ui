import 'package:estate_ui/screen/input_screen.dart';
import 'package:estate_ui/screen/start_screen.dart';
import 'package:estate_ui/screen/view_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EstateUi());
}

class EstateUi extends StatelessWidget {
  const EstateUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xFFFFFFFF),
          scaffoldBackgroundColor: const Color(0xFFFFFFFF),
          appBarTheme: const AppBarTheme(
            color: Color(0xFFFFFFFF),
          ),
        ),
        initialRoute: StartScreen.id,
        routes: {
          StartScreen.id: (context) => StartScreen(),
          InputPage.id: (context) => InputPage(),
          ViewScreen.id: (context) => ViewScreen(),
        });
  }
}
