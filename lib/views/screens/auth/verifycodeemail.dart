
import 'package:alwathba/core/classes/handlingrequstveiw.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../controller/auth/verifycidesignup.dart';
import '../../../core/constant/color.dart';
import '../../widgets/auth/custombady.dart';
import '../../widgets/auth/customtitle.dart';

class VerifyCodeSignUp extends StatelessWidget {
  const VerifyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.background,
        centerTitle: true,
        title: Text(
          'Verification Code',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: GetBuilder<VerifyCodeSignUpControllerImp>(
          builder: (controller) => HandlingDataView(
                statusRequest: controller.statusRequest,
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
                            controller.gotoSuccessSignUp(verificationCode);
                          }, // end onSubmit
                        ),
                      ],
                    )),
              )),
    );
  }
}
