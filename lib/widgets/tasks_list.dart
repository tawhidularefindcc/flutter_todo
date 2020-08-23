import 'package:flutter/material.dart';
import 'package:flutter_todo/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todo/models/task_data.dart';


class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return  ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: (checkboxSate){
              taskData.updateTask(task);
            },
            longpressedCallback: (){
              taskData.deleteTask(task);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
     },
       
    );
  }
}