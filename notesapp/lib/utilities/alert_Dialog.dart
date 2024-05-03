import 'package:flutter/material.dart';
import 'package:notesapp/utilities/my_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.indigo[500],
      content: Container(
        height: 120,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'add task here',
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.20),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                   ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              
                MyButton(text: 'Save', onPressed: onSave),
                MyButton(text: 'Cancel', onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
