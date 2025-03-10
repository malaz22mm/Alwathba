
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller.dart';
import '../../../data/datasoursce/static/static.dart';

class CustomSliderOnBoarding extends StatelessWidget {
   CustomSliderOnBoarding({super.key});

  final OnBoardingControllerImp controller=Get.put(OnBoardingControllerImp());

  @override
  Widget build(BuildContext context) {
    
    return GetBuilder<OnBoardingControllerImp>(builder: (_) {
      return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value);
      },
        itemCount: onBordingList.length,
        itemBuilder: (context, i) {
         return Column(
            children: [
              Text(
                onBordingList[i].title,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset(onBordingList[i].image),
              const SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  onBordingList[i].body,
                  textAlign: TextAlign.center,
                  style:Theme.of(context).textTheme.bodyMedium,
                ),
              )
            ],
          );
        });
    },);
  }
}
