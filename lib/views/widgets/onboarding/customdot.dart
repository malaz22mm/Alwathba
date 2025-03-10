
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller.dart';
import '../../../core/constant/color.dart';
import '../../../data/datasoursce/static/static.dart';

class CustomDotOnBoarding extends StatelessWidget {
  const CustomDotOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<OnBoardingControllerImp>
    (builder: (controller)=>Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(onBordingList.length, (index) => 
                  AnimatedContainer(
                    margin: const EdgeInsets.only(right: 10),
                    duration:const Duration(milliseconds: 700),
                  width: controller.pagecurrent==index? 20:5,
                  height: 6,
                  decoration: BoxDecoration(
                    color: AppColor.primarycolor,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  )
                  )
                ],
              ));
  }
}