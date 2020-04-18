import 'package:disposable_provider/disposable_provider.dart';
import 'package:rxdart/rxdart.dart';

import 'tasks.dart';

class TasksManager extends Disposable {
  final _tasks = BehaviorSubject.seeded(Tasks());

  Stream<Tasks> get tasks => _tasks.stream;

  void addTask({
    String content,
  }) {
    if (content?.isEmpty ?? true) {
      return;
    }
    _tasks.add(
      _tasks.value.copyWith(
        tasks: _tasks.value.tasks + [Task(body: content)],
      ),
    );
  }

  @override
  void dispose() {
    _tasks.close();
  }
}
