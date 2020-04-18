import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_todo/models/models.dart';
import 'package:hooks_todo/models/tasks/tasks_manager.dart';
import 'package:provider/provider.dart';

import 'input_bottom_sheet/input_bottom_sheet.dart';

/// A page which manages [Tasks].
class Home extends HookWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final manager = context.read<TasksManager>();
    final tasks = useTasks(manager.tasks);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final task = tasks.tasks[index];

          return Text(task.body);
        },
        itemCount: tasks.tasks.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          TaskInputSheet.show(
            context,
            onSave: (content) {
              manager.addTask(content: content);
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

Tasks useTasks(Stream<Tasks> tasks) {
  final _tasks = useStream(tasks);
  if (!_tasks.hasData) {
    return Tasks();
  }
  return _tasks.data;
}
