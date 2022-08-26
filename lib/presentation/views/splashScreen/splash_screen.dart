import 'dart:async';

import 'package:advanced_flutter/presentation/constants/color_constant.dart';
import 'package:flutter/material.dart';

import '../../constants/image_values.dart';
import '../../navigation/app_navigation.dart' as app_navigation;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  @override
  void initState() {
    _startDelay();
    super.initState();
  }

  void _startDelay() {
    _timer = Timer(const Duration(seconds: 3), _goNext);
  }

  void _goNext() {
    app_navigation.jumpToNextPage(context);
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryColor,
      body: const Center(
        child: Image(
          image: AssetImage(ImageAssets.LogoImage),
        ),
      ),
    );
  }
}
