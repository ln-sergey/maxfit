import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          children: [
            _logo(),
            // _form(),
          ],
        ),
      );

  Widget _logo() => Padding(
      padding: EdgeInsets.only(top: 100),
      child: Align(
        child: Text(
          'MAXFIT',
          style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
}
