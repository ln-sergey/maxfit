import 'package:flutter/material.dart';
import 'package:maxfit/domain/Workout.dart';

class WorkoutList extends StatelessWidget {
  final workouts = [
    Workout(title: 'Test1', author: 'Sergey', description: 'Text1', level: 'Beginner'),
    Workout(title: 'Test2', author: 'Sergey', description: 'Text1', level: 'Advanced'),
    Workout(title: 'Test3', author: 'Sergey', description: 'Text1', level: 'Intermediate'),
    Workout(title: 'Test4', author: 'Sergey', description: 'Text1', level: 'Beginner'),
    Workout(title: 'Test5', author: 'Sergey', description: 'Text1', level: 'Intermediate'),
  ];

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
                    title: Text(workouts[i].title,
                        style: TextStyle(
                            color: Theme.of(context).textTheme.headline1.color,
                            fontWeight: FontWeight.bold)),
                    leading: Container(
                      padding: EdgeInsets.only(right: 12),
                      child: Icon(Icons.fitness_center,
                          color: Theme.of(context).textTheme.headline1.color),
                      decoration: BoxDecoration(
                          border: Border(
                              right:
                                  BorderSide(width: 1, color: Colors.white24))),
                    ),
                    trailing: Icon(Icons.arrow_right,
                        color: Theme.of(context).textTheme.headline1.color),
                        subtitle: _subtitle(context, workouts[i]),
                  ),
                ),
              )),
    );
  }

  Widget _subtitle(BuildContext context, Workout workout) {
    var color = Colors.grey;
    var indicatorLevel = 0.0;

    switch (workout.level) {
      case 'Beginner':
        color = Colors.green;
        indicatorLevel = 0.33;
        break;
      case 'Intermediate':
        color = Colors.yellow;
        indicatorLevel = 0.66;
        break;
      case 'Advanced':
        color = Colors.red;
        indicatorLevel = 1.0;
        break;
    }
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: LinearProgressIndicator(
            backgroundColor: Theme.of(context).textTheme.headline1.color,
            value: indicatorLevel,
            valueColor: AlwaysStoppedAnimation(color),
          ) 
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 3,
          child: Text(
            workout.level,
            style: TextStyle(color: Theme.of(context).textTheme.headline1.color),
            )
          )
      ],
    );
  }
}
