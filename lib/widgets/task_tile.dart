import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longpressedCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.longpressedCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpressedCallback,
      title: Text(
        taskTitle ?? '',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
