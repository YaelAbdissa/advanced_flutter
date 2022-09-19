import 'package:advanced_flutter/presentation/constants/value_constant.dart';
import 'package:advanced_flutter/presentation/views/onBoardingScreen/on_boarding_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/color_constant.dart';
import '../../constants/image_values.dart';
import '../../constants/string_constants.dart';
import '../../routes/routes.dart';
import '../widgets/button_widget.dart';
import '../widgets/svg_images_widget.dart';
import 'widget/onboarding_page_view.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _pageController = PageController(
    initialPage: 0,
  );

  OnBoardingViewModel _viewModel = OnBoardingViewModel();

  void _bind() {
    _viewModel.init();
  }

  @override
  void initState() {
    _bind();
    super.initState();
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<SliderViewObject>(
        stream: _viewModel.outPutSliderViewObject,
        builder: (context, snapshot) {
          SliderViewObject? sliderViewObject = snapshot.data;
          if (sliderViewObject == null) {
            return Container();
          } else {
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
                itemCount: sliderViewObject.numOfSlides,
                itemBuilder: (context, index) {
                  return OnBoardingPageViewWidget(
                      sliderObject: sliderViewObject.sliderObject);
                },
                onPageChanged: (int currentPage) {
                  _viewModel.onPageChanged(currentPage);
                },
              ),
              bottomSheet: bottomSheet(context, sliderViewObject),
            );
          }
        });
  }

  Container bottomSheet(
      BuildContext context, SliderViewObject sliderViewObject) {
    return Container(
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
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.loginPageRoute);
              },
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
                  onClick: () => _viewModel.goPrevious(),
                  child: Container(
                    // padding: EdgeInsets.symmetric(
                    //     horizontal: AppSize.s14, vertical: AppSize.s12),
                    height: 55,
                    width: 55,
                    child: SvgImageWidget(
                        imageName: ImageAssets.leftArrow,
                        color: ColorConstant.white),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      for (int i = 0; i < sliderViewObject.numOfSlides; i++)
                        Padding(
                          padding: EdgeInsets.all(AppPadding.p8),
                          child: _getProperCircle(
                              i, sliderViewObject.currentIndex),
                        )
                    ],
                  ),
                ),
                ButtonWidget(
                  onClick: () => _viewModel.goNext(),
                  child: Container(
                    // padding: EdgeInsets.symmetric(
                    //     horizontal: AppSize.s14, vertical: AppSize.s12),
                    height: 55,
                    width: 55,
                    child: SvgImageWidget(
                      imageName: ImageAssets.rightArrow,
                      color: ColorConstant.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _getProperCircle(int index, int currentIndex) {
    if (index == currentIndex) {
      return SvgImageWidget(
        imageName: ImageAssets.hollowCircle,
      );
    } else {
      return SvgImageWidget(imageName: ImageAssets.solidCircle);
    }
  }
}
