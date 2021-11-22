import 'package:dsi3_navigate_named_routes/second_screen.dart';
import 'package:dsi3_navigate_named_routes/third_screen.dart';
import 'package:flutter/material.dart';

import 'first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyFirstScreen(title: 'Navigate named routes example'),
      routes: {
        '/screen1': (BuildContext context) => const MyFirstScreen(title: "Screen 1"),
        '/screen2': (BuildContext context) => const MySecondScreen(title: "Screen 2"),
        '/screen3': (BuildContext context) => const MyThirdScreen(title: "Screen 3"),
      },
    );
  }
}