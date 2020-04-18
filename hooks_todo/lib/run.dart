import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'models/tasks/tasks_manager.dart';

void run() {
  runApp(
    MultiProvider(
      providers: [
        Provider<TasksManager>(
          create: (_) => TasksManager(),
          dispose: (_, manager) => manager.dispose(),
        ),
      ],
      child: const App(),
    ),
  );
}
