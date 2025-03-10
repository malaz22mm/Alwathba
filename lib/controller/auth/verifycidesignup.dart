
import 'package:alwathba/core/classes/stutusconntection.dart';
import 'package:get/get.dart';

import '../../data/datasoursce/remote/auth/verifycodesignupdata.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkcode();
  gotoSuccessSignUp(String verificationCode);
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  late StatusRequest statusRequest;
  String? email;
  VerifySignUpData verifySignUpData = VerifySignUpData(Get.find());
  @override
  gotoSuccessSignUp(verificationCode) async {

  }

  @override
  checkcode() {}
  @override
  void onInit() {
    email = Get.arguments["eamil"];
    super.onInit();
  }
}
