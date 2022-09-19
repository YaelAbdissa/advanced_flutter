import 'package:flutter/material.dart';

import '../../constants/value_constant.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback onClick;
  final Widget child;
  const ButtonWidget({
    Key? key,
    required this.onClick,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick(),
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: AppSize.s14, vertical: AppSize.s12),
        child: child,
      ),
    );
  }
}
