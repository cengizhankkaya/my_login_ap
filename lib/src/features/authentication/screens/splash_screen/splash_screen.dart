import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_login_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:my_login_app/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:my_login_app/src/constanst/image_strings.dart';
import 'package:my_login_app/src/constanst/sizes.dart';
import 'package:my_login_app/src/constanst/text_strings.dart';
import 'package:my_login_app/src/features/authentication/controllers/fade_in_animation_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();

    return Scaffold(
      body: Stack(children: [
        TFadeInAnimation(
            durationInMs: 1600,
            animate: TAnimatePosition(
                topAfter: 0,
                topBefore: -30,
                leftAfter: 0,
                bottomBefore: null,
                rightBefore: null,
                leftBefore: null,
                bottomAfter: null,
                rightAfter: null),
            child: const Image(image: AssetImage(tSplashTopIcon))),
        TFadeInAnimation(
          durationInMs: 2000,
          animate: TAnimatePosition(
              topBefore: 80,
              bottomBefore: null,
              leftBefore: -80,
              rightBefore: null,
              topAfter: 80,
              bottomAfter: null,
              leftAfter: tDefaultSize,
              rightAfter: null),
          child: Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2000),
              top: 80,
              left: controller.animate.value ? tDefaultSize : -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: controller.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tAppName,
                        style: Theme.of(context).textTheme.displaySmall),
                    Text(
                      tAppTagLine,
                      style: Theme.of(context).textTheme.displayMedium,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        TFadeInAnimation(
          durationInMs: 2300,
          animate: TAnimatePosition(
              bottomBefore: 0,
              bottomAfter: 50,
              topBefore: null,
              leftBefore: 270,
              rightBefore: null,
              topAfter: null,
              leftAfter: 270,
              rightAfter: null),
          child: const Image(
            image: AssetImage(tSplashIcon),
          ),
        ),
        TFadeInAnimation(
          durationInMs: 2400,
          animate: TAnimatePosition(
              bottomBefore: 0,
              bottomAfter: 60,
              topBefore: null,
              leftBefore: null,
              rightBefore: null,
              topAfter: null,
              leftAfter: null,
              rightAfter: null),
          child: Container(
              alignment: Alignment.topCenter,
              height: 450,
              width: 400,
              child: Image.asset(tSplashTopIcon3)),
        )
      ]),
    );
  }
}
