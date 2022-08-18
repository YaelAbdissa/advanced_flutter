import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key);

  MyApp._internal();
  static final MyApp instance = MyApp._internal(); // singleton, single instance

  int appState = 0;

  factory MyApp() => instance; // factory for the class

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Advanced Course - Udemy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
