import 'package:alwathba/core/classes/stutusconntection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';
import '../../core/functions/handingdatacontroller.dart';
import '../../core/functions/urluncher.dart';
import '../../core/services/services.dart';
import '../../data/remotedata/login_data.dart';

abstract class LoginController extends GetxController {
  login();
  gotoSignUp();
  gotocheckemail();
}

class LoginControllerImp extends LoginController {
   StatusRequest statusRequest=StatusRequest.none;
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  SignInData loginData = SignInData(Get.find());
  MyServices myServices = Get.find();

  bool isshowPassword = true;

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  showPassword() {
    isshowPassword = !isshowPassword;
    update();
  }

  @override
  gotoSignUp() {
    Get.offNamed(Approute.signUp);
  }

  @override
  login() async {
    print("Email: ${email.text}");
    print("Password: ${password.text}");
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();

      var response = await loginData.PostSignUpdata(email.text, password.text);
      statusRequest = handlingData(response);
      update();

      if (statusRequest == StatusRequest.seccess) {
        if(response['msg']=='success'){
          myServices.sharedPreferences.setString('id', "${response['user']}");
          myServices.sharedPreferences.setString('login', '2');
          Get.toNamed(Approute.bottomnavigation);


        }
        else {
          Get.defaultDialog(
            title: "Warning",
            middleText: "Incorrect email or password",
          );
      }
        statusRequest = StatusRequest.failure;
        update();
      }
    } else {
      print("Form validation failed");
    }
  }

  @override
  gotocheckemail() {
    UrlLuncher().launchURL();
  }
}

