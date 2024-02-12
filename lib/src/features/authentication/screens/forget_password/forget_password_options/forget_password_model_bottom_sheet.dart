import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:my_login_app/src/constanst/sizes.dart';
import 'package:my_login_app/src/constanst/text_strings.dart';
import 'package:my_login_app/src/features/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';
import 'package:my_login_app/src/features/authentication/screens/forget_password/forget_password_options/forget_password_mail.dart';
import 'package:my_login_app/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tForgetPasswordTitle,
                style: Theme.of(context).textTheme.displayMedium),
            Text(tForgetPasswordSubTitle,
                style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: tFormHeight),
            ForgetPasswordBtnWidget(
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const ForgetPasswordMailScreen());
              },
              btnIcon: Icons.mail_outline_rounded,
              title: tEmail,
              subTitle: tResetViaEMail,
            ),
            const SizedBox(height: tFormHeight),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: tPhoneNo,
              subTitle: tResetViaPhone,
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const OTPScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
