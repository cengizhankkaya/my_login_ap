import 'package:get/get.dart';
import 'package:my_login_app/src/features/core/screens/dashboard/dashboard.dart';
import 'package:my_login_app/src/repository/authentication_respository/authentication_respository.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();

  Future<void> verifyOTP(String otp) async {
    var isVerified = await AuthenticationRespository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const Dashboard()) : Get.back();
  }
}
