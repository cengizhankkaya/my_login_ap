import 'package:flutter/material.dart';
import 'package:my_login_app/src/common_widgets/form/form_header_widget.dart';
import 'package:my_login_app/src/constanst/image_strings.dart';
import 'package:my_login_app/src/constanst/sizes.dart';
import 'package:my_login_app/src/constanst/text_strings.dart';
import 'package:my_login_app/src/features/authentication/screens/login/login_footer_widget.dart';
import 'package:my_login_app/src/features/authentication/screens/login/login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                    title: tLoginTitle,
                    subTitle: tLoginSubTitle,
                    image: tWelcomeScreenImage),
                LoginFormWidget(),
                LoginFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
