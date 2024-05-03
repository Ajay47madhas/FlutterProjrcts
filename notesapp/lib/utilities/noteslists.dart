import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class Noteslist extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deletFunction;

  Noteslist({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deletFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(motion: StretchMotion(), children: [
          SlidableAction(onPressed: deletFunction,
          icon: Icons.delete,
          backgroundColor: Colors.red,
          borderRadius :BorderRadius.circular(10)
          )
        ]
        ),
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.indigo[200]),
          child: Row(
            children: [
              Checkbox(
                  value: taskCompleted,
                  onChanged: onChanged,
                  activeColor: Colors.indigo[700]),
            Expanded(
                child: Text(
                  taskName,
                  style: TextStyle(
                      decoration: taskCompleted? TextDecoration.lineThrough: TextDecoration.none,
                      decorationColor: Colors.indigo[777],
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
