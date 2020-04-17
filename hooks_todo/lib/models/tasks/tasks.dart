import 'package:freezed_annotation/freezed_annotation.dart';

import 'task/task.dart';

export 'task/task.dart';

part 'tasks.freezed.dart';

/// A model which has list of [Task].
@freezed
abstract class Tasks with _$Tasks {
  factory Tasks({
    @Default(<Task>[]) List<Task> tasks,
  }) = _Tasks;
}
