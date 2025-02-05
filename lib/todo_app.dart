import 'package:flutter/material.dart';
import 'package:todo/pages/home_page.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To do',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 7, 24, 36)),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Flutter To do'),
    );
  }
}
