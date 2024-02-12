import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_login_app/src/constanst/colors.dart';
import 'package:my_login_app/src/constanst/sizes.dart';
import 'package:my_login_app/src/constanst/text_strings.dart';
import 'package:my_login_app/src/features/authentication/controllers/otp_controller.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var otp;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              tOtpTitle,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, fontSize: 80.0),
            ),
            Text(tOtpSubTitle.toUpperCase(),
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 40.0),
            const Text("$tOtpMessage cengizhan.kaya.1453@gmail.com",
                textAlign: TextAlign.center),
            const SizedBox(height: 20.0),
            OtpTextField(
              numberOfFields: 6,
              borderWidth: 4.0,
              showFieldAsBox: true,
              focusedBorderColor: tSecondaryColor,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code) {
                otp = code;
                OTPController.instance.verifyOTP(otp);
              },
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    OTPController.instance.verifyOTP(otp);
                  },
                  child: const Text(tNext)),
            ),
          ],
        ),
      ),
    );
  }
}
