import 'package:flutter/material.dart';

import '../../../constants/value_constant.dart';
import '../../widgets/app_text_widget.dart';
import '../../widgets/svg_images_widget.dart';
import '../../widgets/vertical_spacing.dart';
import '../on_boarding_screen.dart';

class OnBoardingPageViewWidget extends StatelessWidget {
  final SliderObject sliderObject;
  const OnBoardingPageViewWidget({Key? key, required this.sliderObject})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        VerticalSpacing(height: AppSize.s40),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: AppTextWidget(
            text: sliderObject.title,
            textStyle: Theme.of(context).textTheme.headline1!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p12, vertical: AppPadding.p8),
          child: AppTextWidget(
            text: sliderObject.subTitle,
            textStyle: Theme.of(context).textTheme.subtitle1,
            textAlign: TextAlign.center,
          ),
        ),
        VerticalSpacing(height: AppSize.s60),
        SvgImageWidget(
          imageName: sliderObject.image,
        )
      ],
    );
  }
}
