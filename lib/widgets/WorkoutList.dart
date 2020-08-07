import 'package:flutter/material.dart';

class WorkoutList extends StatelessWidget {
  
  final workouts = List<String>(6);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: workouts.length,
        itemBuilder: (context, i) => Card(
          elevation: 2.0,
          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Container(
            color: Color.fromRGBO(50, 65, 85, 0.9),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              title: Text('Workout', style: TextStyle(color: Theme.of(context).textTheme.headline1.color, fontWeight: FontWeight.bold)),
              leading: Container(
                padding: EdgeInsets.only(right: 12),
                child: Icon(Icons.fitness_center, color: Theme.of(context).textTheme.headline1.color),
                decoration: BoxDecoration(
                  border: Border(right: BorderSide(width: 1, color: Colors.white24))
                ) ,
              ),
              trailing: Icon(Icons.arrow_right, color: Theme.of(context).textTheme.headline1.color),
            ),
          ),
        )
      ),
    );
  }
}