import 'package:get/get.dart';

import '../../core/constant/routes.dart';

abstract class SuccessSignUpController extends GetxController {
  gotologin();
}

class SuccessSignUpControllerImp extends SuccessSignUpController {
  @override
  gotologin() {
    Get.offAllNamed(Approute.login);
  }
}