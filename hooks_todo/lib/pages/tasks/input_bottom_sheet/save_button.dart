import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
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
