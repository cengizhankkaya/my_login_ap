import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:my_login_app/src/constanst/colors.dart';
import 'package:my_login_app/src/constanst/image_strings.dart';
import 'package:my_login_app/src/features/authentication/models/model_on_boarding.dart';
import 'package:my_login_app/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';

import '../../../constanst/text_strings.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();

  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
        model: OnBoardingModel(
      image: tOnBoardingImage1,
      title: tOnBoardingTitle1,
      subTitle: tOnBoardingSubTitle1,
      counterText: tOnBoardingSubCounter1,
      bgColor: tOnBoardingPage1Color,
    )),
    OnBoardingPageWidget(
        model: OnBoardingModel(
      image: tOnBoardingImage2,
      title: tOnBoardingTitle2,
      subTitle: tOnBoardingSubTitle2,
      counterText: tOnBoardingSubCounter2,
      bgColor: tOnBoardingPage2Color,
    )),
    OnBoardingPageWidget(
        model: OnBoardingModel(
      image: tOnBoardingImage3,
      title: tOnBoardingTitle3,
      subTitle: tOnBoardingSubTitle3,
      counterText: tOnBoardingSubCounter3,
      bgColor: tOnBoardingPage3Color,
    ))
  ];
  skip() => controller.jumpToPage(page: 2);
  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  OnPageChangeCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;
}
