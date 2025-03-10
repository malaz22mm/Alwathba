
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/onboarding_controller.dart';
import '../../core/constant/color.dart';
import '../widgets/onboarding/custombutton.dart';
import '../widgets/onboarding/customdot.dart';
import '../widgets/onboarding/customslider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Container(
      color: AppColor.background,
      margin: const EdgeInsets.only(top: 25),
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child:CustomSliderOnBoarding()
            ),
             const Expanded(
                flex: 1,
                child: Column(
                  children: [
                    CustomDotOnBoarding(),
                    Spacer(flex: 1,),
                    CustomButtonOnBoarding()
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
