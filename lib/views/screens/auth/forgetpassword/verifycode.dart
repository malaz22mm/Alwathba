
import 'package:alwathba/controller/forgetpassword/verifycode_controller.dart';
import 'package:alwathba/core/classes/handlingdataview.dart';
import 'package:alwathba/core/constant/color.dart';
import 'package:alwathba/views/widgets/auth/custombady.dart';
import 'package:alwathba/views/widgets/auth/customtitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';


class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.background,
          centerTitle: true,
          title: Text(
            'Verification Code',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: GetBuilder<VerifyCodeControllerImp>(
            builder: (controller) => HandlingDataRequest(
                  statuseRequest: controller.statuseRequest,
                  widget: Container(
                      color: AppColor.background,
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: ListView(
                        children: [
                          const CustomTitle(text: "Check Code"),
                          const SizedBox(
                            height: 10,
                          ),
                          const CustomBady(
                              text: "Please Enter The Digit Code Sent To"),
                          const SizedBox(
                            height: 10,
                          ),
                          OtpTextField(
                            fieldWidth: 50.0,
                            borderRadius: BorderRadius.circular(20),
                            numberOfFields: 5,
                            borderColor: const Color(0xFF512DA8),
                            //set to true to show as box or false to show as dash
                            showFieldAsBox: true,
                            //runs when a code is typed in
                            onCodeChanged: (String code) {
                              //handle validation or checks here
                            },
                            //runs when every textfield is filled
                            onSubmit: (String verificationCode) {
                              controller.gotoresetpassword(verificationCode);
                            }, // end onSubmit
                          ),
                        ],
                      )),
                )));
  }
}
