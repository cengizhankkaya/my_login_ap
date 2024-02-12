import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_login_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:my_login_app/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:my_login_app/src/constanst/colors.dart';
import 'package:my_login_app/src/constanst/image_strings.dart';
import 'package:my_login_app/src/constanst/sizes.dart';
import 'package:my_login_app/src/constanst/text_strings.dart';
import 'package:my_login_app/src/features/authentication/controllers/fade_in_animation_controller.dart';
import 'package:my_login_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:my_login_app/src/features/authentication/screens/signup/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();

    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Stack(children: [
        TFadeInAnimation(
          durationInMs: 1200,
          animate: TAnimatePosition(
              topBefore: 0,
              bottomBefore: -100,
              leftBefore: 0,
              rightBefore: 0,
              topAfter: 0,
              bottomAfter: 0,
              leftAfter: 0,
              rightAfter: 0),
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  image: const AssetImage(tWelcomeScreenImage),
                  height: height * 0.6,
                ),
                Column(
                  children: [
                    Text(
                      tWelcomeTitle,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    Text(
                      tWelcomeSubTitle,
                      style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: OutlinedButton(
                            onPressed: () => Get.to(() => const LoginScreen()),
                            child: Text(tLogin.toUpperCase()))),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () => Get.to(() => const SignUpScreen()),
                          child: Text(tSignup.toUpperCase())),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
