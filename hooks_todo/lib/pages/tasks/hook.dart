import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_todo/models/models.dart';


/// A hook which provides [Tasks] from stream.
Tasks useTasks(Stream<Tasks> tasks) {
  final _tasks = useStream(tasks);
  if (!_tasks.hasData) {
    return Tasks();
  }
  return _tasks.data;
}
