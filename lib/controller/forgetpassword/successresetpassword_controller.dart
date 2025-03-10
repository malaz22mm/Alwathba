import 'package:get/get.dart';

import '../../core/constant/routes.dart';

abstract class SuccessResetPasswordController extends GetxController {
  gotologin();
}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  @override
  gotologin() {
    Get.offAllNamed(Approute.login);
  }
}