import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'save_button.dart';

typedef OnTaskSave = void Function(String);

class TaskInputSheet extends HookWidget {
  const TaskInputSheet._({
    @required this.onSubmitted,
    Key key,
  }) : super(key: key);

  static Future<void> show(
    BuildContext context, {
    @required OnTaskSave onSave,
  }) async {
    await showModalBottomSheet<void>(
      isScrollControlled: true,
      context: context,
      builder: (_context) {
        return TaskInputSheet._(onSubmitted: onSave);
      },
    );
  }

  final OnTaskSave onSubmitted;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return Padding(
      padding: MediaQuery.of(context).viewInsets.copyWith(
            left: 8,
            right: 8,
          ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              autofocus: true,
              controller: controller,
              decoration: const InputDecoration(
                hintText: '新しいタスク',
              ),
              onSubmitted: (text) {
                onSubmitted(text);
                Navigator.of(context).maybePop();
              },
            ),
          ),
          SaveButton(
            onTap: () {
              onSubmitted(controller.text);
            },
          ),
        ],
      ),
    );
  }
}
