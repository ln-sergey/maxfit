import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maxfit/widgets/WorkoutList.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar:
        AppBar(title: Text('Maxfit'), leading: Icon(Icons.fitness_center)),
      body: WorkoutList(),
    );
}
