import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgImageWidget extends StatelessWidget {
  final String imageName;
  const SvgImageWidget({Key? key, required this.imageName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(imageName);
  }
}
