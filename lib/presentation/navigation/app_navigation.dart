import 'package:advanced_flutter/presentation/routes/routes.dart';
import 'package:flutter/material.dart';

jumpToNextPage(BuildContext context) {
  Navigator.pushReplacementNamed(
    context,
    Routes.onBoardingPageRoute,
  );
}
