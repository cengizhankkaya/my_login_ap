import 'package:get/get.dart';
import 'package:my_login_app/src/repository/authentication_respository/authentication_respository.dart';
import 'package:my_login_app/src/repository/user_repository.dart/user_repository.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();

  final _authRepo = Get.put(AuthenticationRespository());
  final _userRepo = Get.put(UserRespository());

  /// Step 3 - Get User Email and pass to UserRespository to fetch user record.
  getUserModel() {
    final email = _authRepo.firebaseUser.value?.email;
    if (email != null) {
      return _userRepo.getUserDetails(email);
    } else {
      Get.snackbar("Error", "Login to countinue");
    }
  }
}
