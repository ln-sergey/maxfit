import 'package:flutter/material.dart';

Widget button(BuildContext context ,String label, void callback()) => RaisedButton(
      splashColor: Theme.of(context).primaryColor,
      highlightColor: Theme.of(context).primaryColor,
      color: Colors.white,
      child: Text(
        label,
        style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor, fontSize: 20)
      ),
      onPressed: callback 
    );