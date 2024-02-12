import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_login_app/src/repository/authentication_respository/authentication_respository.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  //TextField Controllers To get data from TextField
  final email = TextEditingController();
  final password = TextEditingController();

  //Call this Function from Desing & it will  do the rast

  Future<void> loginUser(String email, String password) async {
    String? error = await AuthenticationRespository.instance
        .loginWithEmailAndPassword(email, password);
    if (error != null) {
      Get.showSnackbar(GetSnackBar(message: error.toString()));
    }
  }
}
