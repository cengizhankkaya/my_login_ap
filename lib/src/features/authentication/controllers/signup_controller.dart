import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_login_app/src/features/authentication/models/user_model.dart';
import 'package:my_login_app/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:my_login_app/src/repository/authentication_respository/authentication_respository.dart';
import 'package:my_login_app/src/repository/user_repository.dart/user_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  //TextField Controllers to get data from TextField
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  final userRepo = Get.put(UserRespository());

  //Call this Function from Design & it will the rest
  void registerUser(String email, String password) {
    String? error = AuthenticationRespository.instance
        .createUserWithEmailAndPassword(email, password) as String?;
    if (error != null) {
      Get.showSnackbar(GetSnackBar(message: error.toString()));
    }
  }

//Get phoneNo from and pass it to Auth Responsitory for Firebase Authentication
  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
    phoneAuthentication(user.phoneNo);
    Get.to(() => const OTPScreen());
  }

  void phoneAuthentication(String phoneNo) {
    AuthenticationRespository.instance.loginWithPhoneNo(phoneNo);
  }
}
