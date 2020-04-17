import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_todo/models/models.dart';

/// A page which manages [Tasks].
class Home extends HookWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tasks = useState(Tasks());
    return Container();
  }
}
