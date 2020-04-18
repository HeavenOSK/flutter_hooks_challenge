import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_todo/models/models.dart';
import 'package:hooks_todo/models/tasks/tasks_manager.dart';
import 'package:provider/provider.dart';

import 'hook.dart';
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
      body: ListView.separated(
        separatorBuilder: (_, _index) => const Divider(),
        itemBuilder: (_, index) {
          final task = tasks.tasks[index];
          return ListTile(
            title: Text(task.body),
          );
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
