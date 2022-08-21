import 'package:flutter/material.dart';

class UndefinedRouteScreen extends StatelessWidget {
  const UndefinedRouteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("No route found."),
      ),
      body: const Center(
        child: Text("No route found."),
      ),
    );
  }
}
