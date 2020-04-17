import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void main() {
  runApp(const Counter());
}

class Counter extends HookWidget {
  const Counter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = useState(0);

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('${counter.value}'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => counter.value++,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
