
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constant/routes.dart';
import '../core/services/services.dart';
import '../data/datasoursce/static/static.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int pagecurrent = 0;

  MyServices myServices=Get.find();
  @override
  next() {
    pagecurrent++;
    if (pagecurrent > onBordingList.length - 1) {
      myServices.sharedPreferences.setString("step", "1");
      Get.offAllNamed(Approute.login);
    } else {
      pageController.animateToPage(pagecurrent,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    pagecurrent = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
