import 'package:alwathba/controller/forgetpassword/successresetpassword_controller.dart';
import 'package:alwathba/core/constant/color.dart';
import 'package:alwathba/views/widgets/auth/custombady.dart';
import 'package:alwathba/views/widgets/auth/custombutton.dart';
import 'package:alwathba/views/widgets/auth/customtitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPassword extends StatelessWidget {
   SuccessResetPassword({super.key});

final SuccessResetPasswordControllerImp controller = Get.put(SuccessResetPasswordControllerImp());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.background,
        centerTitle: true,
        title: Text(
          'Success',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: Container(
        color: AppColor.background,
        padding: const EdgeInsets.all(15),
        child:  Column(
          children: [
              const Center(
                child:Icon(Icons.check_circle_outline,size: 200,color: Colors.green,) ,),
               const CustomTitle(text: "Congratulations",),
              const CustomBady(text: "successfuly resetpassword"),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(5),
                width: double.infinity,
                child: CustomButton(
                  text: "Go To Login",
                  onPressed: () {
                    controller.gotologin();
                  },
                ),
              ),
              const SizedBox(height: 20,)
          ],),
      ),
    );
  }
}