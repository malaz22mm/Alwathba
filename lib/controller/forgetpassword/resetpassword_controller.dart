import 'package:alwathba/core/classes/statuserequest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/datasoursce/remote/forgetpassword/resetpassword.dart';

abstract class ResetPasswordController extends GetxController {
  gotoSuccessPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController repassword;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());
  String? email;
  StatuseRequest statuseRequest = StatuseRequest.none;


  @override
  gotoSuccessPassword() async {

    if (formstate.currentState!.validate()) {

  }}

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    email = Get.arguments["email"];
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
