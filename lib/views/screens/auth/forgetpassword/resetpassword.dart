
import 'package:alwathba/controller/forgetpassword/resetpassword_controller.dart';
import 'package:alwathba/core/classes/handlingdataview.dart';
import 'package:alwathba/core/constant/color.dart';
import 'package:alwathba/core/functions/validinput.dart';
import 'package:alwathba/views/widgets/auth/custombady.dart';
import 'package:alwathba/views/widgets/auth/custombutton.dart';
import 'package:alwathba/views/widgets/auth/customtextformfield.dart';
import 'package:alwathba/views/widgets/auth/customtitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.background,
          centerTitle: true,
          title: Text(
            'Reset Password',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: GetBuilder<ResetPasswordControllerImp>(
            builder: (controller) => HandlingDataRequest(
                  statuseRequest: controller.statuseRequest,
                  widget: Container(
                      color: AppColor.background,
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Form(
                        key: controller.formstate,
                        child: ListView(
                          children: [
                            const CustomTitle(text: "New Password"),
                            const SizedBox(
                              height: 10,
                            ),
                            const CustomBady(text: "Please Enter New Password"),
                            const SizedBox(height: 10),
                            CustomTextFormField(
                                valid: (val) {
                                  return validInput(val!, 10, 20, "password");
                                },
                                mycontroller: controller.password,
                                hinttext: "Enter Your Password",
                                labeltext: "Password",
                                iconData: Icons.lock_outline),
                            const SizedBox(height: 10),
                            CustomTextFormField(
                                valid: (val) {
                                  return validInput(val!, 10, 20, "password");
                                },
                                mycontroller: controller.repassword,
                                hinttext: "ReEnter Your Password",
                                labeltext: "Password",
                                iconData: Icons.lock_outline),
                            CustomButton(
                              text: "Save",
                              onPressed: () {
                                controller.gotoSuccessPassword();
                              },
                            ),
                          ],
                        ),
                      )),
                )));
  }
}
