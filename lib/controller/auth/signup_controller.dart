
import 'package:alwathba/core/classes/stutusconntection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';
import '../../data/datasoursce/remote/auth/signupdata.dart';

abstract class SignUpController extends GetxController {
  signup();

  gotoSignIn();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController email;
  late StatusRequest statusRequest;
  late TextEditingController password;
  late TextEditingController phone;
  late TextEditingController username;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  List data = [];
  SignUpData signUpData = SignUpData(Get.find());

  @override
  gotoSignIn() {
    Get.toNamed(Approute.login);
  }

  @override
  signup() async {
    if (formstate.currentState!.validate()) {}
    @override
    void onInit() {
      email = TextEditingController();
      password = TextEditingController();
      phone = TextEditingController();
      username = TextEditingController();
      super.onInit();
    }

    @override
    void dispose() {
      email.dispose();
      phone.dispose();
      username.dispose();
      password.dispose();
      super.dispose();
    }
  }
}
