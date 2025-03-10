import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/color.dart';

 alertExitApp() {
     Get.defaultDialog(
      title: "Warrning",
      middleText: "Are You Want Exit From Application",
      actions: [
        MaterialButton(
          color: AppColor.primarycolor,
          textColor: Colors.white,
          onPressed: () {
            exit(0);
          },
          child: const Text("Confirm"),
        ),
        MaterialButton(
          color: AppColor.primarycolor,
          textColor: Colors.white,
          onPressed: () {
            Get.back();
          },
          child: const Text("Cancel"),
        ),
      ]);
   return true;
}
