import 'package:disposable_provider/disposable_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'models/tasks/tasks_manager.dart';

void run() {
  runApp(
    MultiProvider(
      providers: [
        DisposableProvider<TasksManager>(
          create: (_) => TasksManager(),
        ),
      ],
      child: const App(),
    ),
  );
}
