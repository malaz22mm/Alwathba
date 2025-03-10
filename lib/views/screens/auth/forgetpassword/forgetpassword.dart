
import 'package:alwathba/controller/forgetpassword/forgetpassword_controller.dart';
import 'package:alwathba/core/classes/handlingdataview.dart';

import 'package:alwathba/core/constant/color.dart';
import 'package:alwathba/core/functions/validinput.dart';
import 'package:alwathba/views/widgets/auth/custombady.dart';
import 'package:alwathba/views/widgets/auth/custombutton.dart';
import 'package:alwathba/views/widgets/auth/customtextformfield.dart';
import 'package:alwathba/views/widgets/auth/customtitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.background,
          centerTitle: true,
          title: Text(
            'Forget Password',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: GetBuilder<ForgetPasswordImp>(
          builder: (controller) =>
          HandlingDataRequest(statuseRequest: controller.statuseRequest, widget:Container(
                      color: AppColor.background,
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Form(
                        key: controller.formstate,
                        child: ListView(
                          children: [
                            const CustomTitle(text: "Check Email"),
                            const SizedBox(
                              height: 25,
                            ),
                            SizedBox(
                              width: 216,
                              height: 233,
                              child: Image.asset("assets/images/three.PNG"),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const CustomBady(
                                text:
                                    "Please Enter Your Email Address To Recive A verification code"),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextFormField(
                                valid: (val) {
                                  return validInput(val!, 10, 30, "email");
                                },
                                mycontroller: controller.email,
                                hinttext: "Enter Your Email",
                                labeltext: "Email",
                                iconData: Icons.email_outlined),
                            const SizedBox(height: 10),
                            CustomButton(
                              text: "Check",
                              onPressed: () {
                                controller.checkemail();
                              },
                            ),
                          ],
                        ),
                      )),)
        ));
  }
}

