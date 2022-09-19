import 'dart:async';

import 'package:advanced_flutter/domain/model.dart';
import 'package:advanced_flutter/presentation/base/base_view_model.dart';

import '../../constants/image_values.dart';
import '../../constants/string_constants.dart';

class OnBoardingViewModel extends BaseViewModel
    with OnBoardingViewModelInputs, OnBoardingViewModelOutputs {
  final StreamController _streamController =
      StreamController<SliderViewObject>();

  late List<SliderObject> _list;

  int _currentIndex = 0;

  @override
  void onPageChanged(int index) {
    _currentIndex = index;
  }

  @override
  void goNext() {
    int nextIndex = _currentIndex + 1;
    if (nextIndex >= _list.length) {
      _currentIndex = _list.length - 1;
    } else {
      _currentIndex = nextIndex;
    }
    _sendDataToView();
  }

  @override
  void goPrevious() {
    int previousIndex = _currentIndex - 1;
    if (previousIndex == -1) {
      _currentIndex = 0;
    } else {
      _currentIndex = previousIndex;
    }
    _sendDataToView();
  }

  @override
  Sink get inputSliderViewObject => _streamController.sink;

  @override
  Stream<SliderViewObject> get outPutSliderViewObject =>
      _streamController.stream.map((sliderViewObject) => sliderViewObject);

  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void init() {
    _list = getSliderData();
    _sendDataToView();
  }

  // a function only found in onboarding view model
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

  void _sendDataToView() {
    inputSliderViewObject.add(
      SliderViewObject(
        sliderObject: _list[_currentIndex],
        numOfSlides: _list.length,
        currentIndex: _currentIndex,
      ),
    );
  }
}

// receives data from the view
abstract class OnBoardingViewModelInputs {
  void goNext();
  // when user click next arrow

  void goPrevious();
  // when user click previous arrow

  void onPageChanged(int index);

  Sink get inputSliderViewObject; // to add some data to stream
}

// sends data to the view
abstract class OnBoardingViewModelOutputs {
  Stream<SliderViewObject> get outPutSliderViewObject;
}

class SliderViewObject {
  SliderObject sliderObject;
  int numOfSlides;
  int currentIndex;
  SliderViewObject({
    required this.sliderObject,
    required this.numOfSlides,
    required this.currentIndex,
  });
}
