
import 'package:alwathba/core/classes/handlingrequstveiw.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/login_controller.dart';
import '../../../core/constant/color.dart';
import '../../../core/functions/validinput.dart';
import '../../widgets/auth/custombady.dart';
import '../../widgets/auth/custombutton.dart';
import '../../widgets/auth/customtextformfield.dart';
import '../../widgets/auth/customtextsignup.dart';
import '../../widgets/auth/customtitle.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final LoginControllerImp controller = Get.put(LoginControllerImp());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.background,
        centerTitle: true,
        title: Text(
          'Sign In',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: GetBuilder<LoginControllerImp>(
        builder: (controller) => CoustomHandlingData(
          statusRequest: controller.statusRequest,
          widget: Container(
            color: AppColor.background,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Form(
              key: controller.formstate,
              child: ListView(
                children: [
                  const CustomTitle(text: "Welcome Back"),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 216,
                    height: 233,
                    child: Image.asset("assets/images/three.PNG"),
                  ),
                  const SizedBox(height: 10),
                  const CustomBady(
                      text: "Sign In With Email and Password OR Continue With Social Media"
                  ),
                  const SizedBox(height: 20),
                  CustomTextFormField(
                    valid: (val) {
                      return validInput(val!, 10, 30, "email");
                    },
                    mycontroller: controller.email,
                    hinttext: "Enter Your Email",
                    labeltext: "Email",
                    iconData: Icons.email_outlined,
                  ),
                  GetBuilder<LoginControllerImp>(
                    builder: (controller) => CustomTextFormField(
                      valid: (val) {
                        return validInput(val!, 5, 20, "password");
                      },
                      obscureText: controller.isshowPassword,
                      onTapIcon: () {
                        controller.showPassword();
                      },
                      mycontroller: controller.password,
                      hinttext: "Enter Your Password",
                      labeltext: "Password",
                      iconData: Icons.lock_outline,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      controller.gotocheckemail();
                    },
                    child: const Text(
                      "Forget Password",
                      textAlign: TextAlign.end,
                    ),
                  ),
                  const SizedBox(height: 10),
                  CustomButton(
                    text: "Sign In",
                    onPressed: () {
                      controller.login();
                    },
                  ),
                  CustomTextSignUp(
                      texttone: "Don't have an account? ",
                      texttwo: "SignUp",
                      onTap: () {
                        controller.gotoSignUp();
                      }
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
