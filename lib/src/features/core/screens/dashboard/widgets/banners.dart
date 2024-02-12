import 'package:flutter/material.dart';
import 'package:my_login_app/src/constanst/colors.dart';
import 'package:my_login_app/src/constanst/image_strings.dart';
import 'package:my_login_app/src/constanst/sizes.dart';
import 'package:my_login_app/src/constanst/text_strings.dart';

class DashboardBanners extends StatelessWidget {
  const DashboardBanners({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: tCardBgColor),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        child: Image(
                      image: AssetImage(tBookmarkIcon),
                      height: 25,
                    )),
                    Flexible(child: Image(image: AssetImage(tBannerImage1))),
                  ],
                ),
                const SizedBox(height: 25),
                Text(tDashboardBannerTitle1,
                    style: txtTheme.headlineMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis),
                Text(tDashboardBannerSubTitle,
                    style: txtTheme.bodyMedium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
        ),
        const SizedBox(width: tDashboardCardPadding),
        Expanded(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: tCardBgColor),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                            child: Image(
                          image: AssetImage(tBookmarkIcon),
                          height: 25,
                        )),
                        Flexible(
                            child: Image(image: AssetImage(tBannerImage2))),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Text(tDashboardBannerTitle2,
                        style: txtTheme.headlineMedium,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis),
                    Text(tDashboardBannerSubTitle,
                        style: txtTheme.bodyMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text(tDashboardButton),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
