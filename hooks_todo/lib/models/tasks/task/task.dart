import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';

/// A model of task.
@freezed
abstract class Task with _$Task {
  const factory Task({
    @required String body,
    @nullable DateTime dueDate,
  }) = _Task;
}
