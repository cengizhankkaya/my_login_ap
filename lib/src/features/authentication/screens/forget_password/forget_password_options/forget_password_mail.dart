import 'package:flutter/material.dart';
import 'package:my_login_app/src/common_widgets/form/form_header_widget.dart';
import 'package:my_login_app/src/constanst/image_strings.dart';
import 'package:my_login_app/src/constanst/sizes.dart';
import 'package:my_login_app/src/constanst/text_strings.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                const SizedBox(height: tDefaultSize * 4),
                const FormHeaderWidget(
                  title: tForgetPasswordTitle,
                  subTitle: tForgetPasswordSubTitle,
                  image: tforgetPasswordImage,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30.00,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: tFormHeight,
                ),
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(tEmail),
                        hintText: tEmail,
                        prefixIcon: Icon(Icons.mail_outline_rounded),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(tNext),
                        ))
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
