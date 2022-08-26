import 'package:advanced_flutter/presentation/constants/theme_constant.dart';
import 'package:flutter/material.dart';

import '../presentation/routes/routes.dart';

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
      theme: getApplicationTheme(),
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: Routes.splashPageRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
