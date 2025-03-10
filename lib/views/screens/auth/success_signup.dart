
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/successsignup_controller.dart';
import '../../../core/constant/color.dart';
import '../../widgets/auth/custombady.dart';
import '../../widgets/auth/custombutton.dart';
import '../../widgets/auth/customtitle.dart';

class SuccessSignUp extends StatelessWidget {
   SuccessSignUp({super.key});

final SuccessSignUpControllerImp controller=Get.put(SuccessSignUpControllerImp());

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
              const CustomBady(text: "successfuly registared"),
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