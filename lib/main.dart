import 'package:flutter/material.dart';
import 'package:maxfit/screens/AuthScreen.dart';
import 'package:maxfit/screens/HomeScreen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Maxfit',
        theme: ThemeData(
          primaryColor: Color.fromRGBO(50, 65, 85, 1),
          textTheme: TextTheme(headline1: TextStyle(color: Colors.white)),
        ),
        home: AuthScreen(),
      );
}
