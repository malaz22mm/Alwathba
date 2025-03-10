
import 'package:alwathba/core/classes/statuserequest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/datasoursce/remote/forgetpassword/checkemail.dart';

abstract class ForgetPasswordC extends GetxController {
  checkemail();
}

class ForgetPasswordImp extends ForgetPasswordC {
  late TextEditingController email;
  GlobalKey<FormState> formstate=GlobalKey<FormState>();
  CheckEmailData checkEmailData=CheckEmailData(Get.find());

  StatuseRequest statuseRequest = StatuseRequest.none;


  @override
  checkemail() async{
      if (formstate.currentState!.validate()) {
  }}
  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
