import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

typedef OnSubmitted = void Function(String);

/// A bottom sheet to input tasks.
class TaskInputSheet extends HookWidget {
  const TaskInputSheet._({
    @required this.onSubmitted,
    Key key,
  })  : assert(onSubmitted != null),
        super(key: key);

  static Future<void> show(
    BuildContext context, {
    @required OnSubmitted onSubmitted,
  }) async {
    await showModalBottomSheet<void>(
      isScrollControlled: true,
      context: context,
      builder: (_context) {
        return TaskInputSheet._(onSubmitted: onSubmitted);
      },
    );
  }

  final OnSubmitted onSubmitted;

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
          _SaveButton(
            onTap: () {
              onSubmitted(controller.text);
            },
          ),
        ],
      ),
    );
  }
}

class _SaveButton extends StatelessWidget {
  const _SaveButton({
    @required this.onTap,
    Key key,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: const SizedBox(
        height: 42,
        width: 72,
        child: Center(
          child: Text('保存'),
        ),
      ),
    );
  }
}
