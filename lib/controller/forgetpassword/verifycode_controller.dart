
import 'package:get/get.dart';
import '../../data/datasoursce/remote/forgetpassword/verifycodee.dart';
import 'package:alwathba/core/classes/statuserequest.dart';

abstract class VerifyCodeController extends GetxController {
  checkcode();
  gotoresetpassword(String verificationCode);
}

class VerifyCodeControllerImp extends VerifyCodeController {
 VerifyCodeForgetPasswordData verifyCodeForgetPasswordData=VerifyCodeForgetPasswordData(Get.find());
 String? email;
 StatuseRequest statuseRequest = StatuseRequest.none;


 @override
  gotoresetpassword(verificationCode) async {
  }

  @override
  checkcode() {}
  @override
  void onInit() {
    email=Get.arguments["email"];
    super.onInit();
  }
}
