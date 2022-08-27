import 'package:advanced_flutter/presentation/constants/value_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/color_constant.dart';
import '../../constants/image_values.dart';
import '../../constants/string_constants.dart';
import '../widgets/button_widget.dart';
import '../widgets/svg_images_widget.dart';
import 'widget/onboarding_page_view.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late final List<SliderObject> _list = getSliderData();
  int _currentIndex = 0;

  PageController _pageController = PageController(
    initialPage: 0,
  );

  List<SliderObject> getSliderData() => [
        SliderObject(
          title: AppStrings.onBoardingTitle1,
          subTitle: AppStrings.onBoardingSubTitle1,
          image: ImageAssets.onboardingImage1,
        ),
        SliderObject(
          title: AppStrings.onBoardingTitle2,
          subTitle: AppStrings.onBoardingSubTitle2,
          image: ImageAssets.onboardingImage2,
        ),
        SliderObject(
          title: AppStrings.onBoardingTitle3,
          subTitle: AppStrings.onBoardingSubTitle3,
          image: ImageAssets.onboardingImage3,
        ),
        SliderObject(
          title: AppStrings.onBoardingTitle4,
          subTitle: AppStrings.onBoardingSubTitle4,
          image: ImageAssets.onboardingImage4,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.white,
      appBar: AppBar(
        elevation: AppSize.s0,
        backgroundColor: ColorConstant.white,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorConstant.white,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: _list.length,
        itemBuilder: (context, index) {
          return OnBoardingPageViewWidget(sliderObject: _list[index]);
        },
        onPageChanged: (int currentPage) {
          setState(() {
            _currentIndex = currentPage;
          });
        },
      ),
      bottomSheet: Container(
        color: ColorConstant.white,
        height: AppSize.s100,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                child: Text(
                  AppStrings.skip,
                  style: Theme.of(context).textTheme.button,
                  textAlign: TextAlign.right,
                ),
                onPressed: () {},
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: AppSize.s50,
              color: ColorConstant.primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonWidget(
                    onClick: () => onLeftArrowClick(),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppSize.s14, vertical: AppSize.s12),
                      child: SvgImageWidget(
                        imageName: ImageAssets.leftArrow,
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        for (int i = 0; i < _list.length; i++)
                          Padding(
                            padding: EdgeInsets.all(AppPadding.p8),
                            child: _getProperCircle(i),
                          )
                      ],
                    ),
                  ),
                  ButtonWidget(
                    onClick: () => onRightArrowClick(),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppSize.s14, vertical: AppSize.s12),
                      child: SvgImageWidget(
                        imageName: ImageAssets.rightArrow,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void onRightArrowClick() {
    _pageController.nextPage(
      duration: Duration(milliseconds: DurationConstant.d300),
      curve: Curves.ease,
    );
  }

  void onLeftArrowClick() {
    _pageController.previousPage(
      duration: Duration(milliseconds: DurationConstant.d300),
      curve: Curves.ease,
    );
  }

  Widget _getProperCircle(int index) {
    if (index == _currentIndex) {
      return SvgImageWidget(imageName: ImageAssets.hollowCircle);
    } else {
      return SvgImageWidget(imageName: ImageAssets.solidCircle);
    }
  }
}

class SliderObject {
  String title;
  String subTitle;
  String image;
  SliderObject({
    required this.title,
    required this.subTitle,
    required this.image,
  });
}
