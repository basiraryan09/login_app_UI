

import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/images.dart';
import '../../../../constants/text.dart';
import '../../models/model_on_boarding/model_on_boarding.dart';
import '../../screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController{

  RxInt currentPage = 0.obs;
  final controller = LiquidController();
  skip() => controller.jumpToPage(page: 2);

  final Pages= [
    OnBoardingPageWidget(model: OnBoardingModel(
        image: onBoardImg1,
        title: appOnBoardingTitle1,
        subTitle: appOnBoardingSubTitle1,
        counterText: appOnBoardingCounter1,
        bgColor: appOnBoardingPage1Color, height: 0.5,
    ),),
    OnBoardingPageWidget(model: OnBoardingModel(
        image: onBoardImg2,
        title: appOnBoardingTitle2,
        subTitle: appOnBoardingSubTitle2,
        counterText: appOnBoardingCounter2,
        bgColor: appOnBoardingPage2Color, height: 0.5,
      
    ),),
    OnBoardingPageWidget(model: OnBoardingModel(
        image: onBoardImg3,
        title: appOnBoardingTitle3,
        subTitle: appOnBoardingSubTitle3,
        counterText: appOnBoardingCounter3,
        bgColor: appOnBoardingPage3Color, height: 0.5,
    ),),
  ];

  animateToNextSlide(){
    int nextPage =controller.currentPage +1;
    controller.animateToPage(page: nextPage);
  }

  void onPageChangeCallback(int activePageIndex) {
    currentPage.value = activePageIndex;
  }
}