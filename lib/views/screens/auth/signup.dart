
import 'package:alwathba/core/classes/handlingrequstveiw.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/signup_controller.dart';
import '../../../core/constant/color.dart';
import '../../../core/functions/alertexitapp.dart';
import '../../../core/functions/validinput.dart';
import '../../widgets/auth/custombady.dart';
import '../../widgets/auth/custombutton.dart';
import '../../widgets/auth/customtextformfield.dart';
import '../../widgets/auth/customtextsignup.dart';
import '../../widgets/auth/customtitle.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.background,
          centerTitle: true,
          title: Text(
            'Sign Up',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: PopScope(
          canPop: alertExitApp(),
          child: GetBuilder<SignUpControllerImp>(
              builder: (controller) => HandlingDataView(
                  statusRequest: controller.statusRequest,
                  widget: Container(
                      color: AppColor.background,
                      //margin: const EdgeInsets.symmetric(vertical: 2),
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Form(
                        key: controller.formstate,
                        child: ListView(
                          children: [
                            const CustomTitle(text: "Welcome Back"),
                            const SizedBox(
                              height: 40,
                            ),
                            const CustomBady(
                                text:
                                    "Sign In With Email and Password OR Continue With Social Media"),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomTextFormField(
                                valid: (val) {
                                  return validInput(val!, 5, 20, "username");
                                },
                                mycontroller: controller.username,
                                hinttext: "Enter Your Username",
                                labeltext: "Username",
                                iconData: Icons.person_outlined),
                            CustomTextFormField(
                                valid: (val) {
                                  return validInput(val!, 10, 30, "email");
                                },
                                mycontroller: controller.email,
                                hinttext: "Enter Your Email",
                                labeltext: "Email",
                                iconData: Icons.email_outlined),
                            CustomTextFormField(
                                valid: (val) {
                                  return validInput(val!, 9, 15, "phone");
                                },
                                mycontroller: controller.phone,
                                hinttext: "Enter Your Phone",
                                labeltext: "phone",
                                iconData: Icons.call_outlined),
                            CustomTextFormField(
                                valid: (val) {
                                  return validInput(val!, 10, 20, "password");
                                },
                                mycontroller: controller.password,
                                hinttext: "Enter Your Password",
                                labeltext: "Password",
                                iconData: Icons.lock_outline),
                            const SizedBox(height: 10),
                            CustomButton(
                              text: "Sign Up",
                              onPressed: () {
                                controller.signup();
                              },
                            ),
                            CustomTextSignUp(
                                texttone: "have an account? ",
                                texttwo: " SignIn",
                                onTap: () {
                                  controller.gotoSignIn();
                                })
                          ],
                        ),
                      )))),
        ));
  }
}
