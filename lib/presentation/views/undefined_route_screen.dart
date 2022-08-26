import 'package:advanced_flutter/presentation/constants/string_constants.dart';
import 'package:flutter/material.dart';

class UndefinedRouteScreen extends StatelessWidget {
  const UndefinedRouteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.noRouteFound),
      ),
      body: const Center(
        child: Text(AppStrings.noRouteFound),
      ),
    );
  }
}
