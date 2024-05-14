import 'package:flutter/material.dart';
import 'package:lavana_food/package/dashboard.dart';
import 'package:lavana_food/package/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 197, 0, 0)),
        useMaterial3: true,
      ),
      home: DasboardPage(),
    );
  }
}
