import 'package:flutter/material.dart';
import 'package:my_login_app/src/features/authentication/models/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(40),
      color: model.bgColor,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Image(
          image: AssetImage(model.image),
          height: size.height * 0.4,
        ),
        Column(
          children: [
            Text(
              model.title,
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Text(
              model.subTitle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Text(
          model.counterText,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: 50,
        )
      ]),
    );
  }
}
