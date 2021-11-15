import 'package:get/get.dart';

class PasswordVisibilityController extends GetxController {
  var isHidden = true.obs;
  changeHiddenStatus() {
    // ignore: unrelated_type_equality_checks
    if (isHidden == true) {
      isHidden.value = false;
    } else {
      isHidden.value = true;
    }
  }
}
