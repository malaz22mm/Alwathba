
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/imageasset.dart';
import '../../../core/constant/routes.dart';
import 'homebutton.dart';

class DrawerHome extends StatelessWidget {
  const DrawerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
           const  SizedBox(
              height: 100,
            ),
            Image.asset(
              AppImage.imagethree,
              width: 150,
              height: 150,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "aliwanous@gmail.com",
              style: TextStyle(fontSize: 20, color: AppColor.grey),
            ),
            const SizedBox(
              height: 40,
            ),
            HomeButton(textbutton: "Team",onPressed: (){Get.toNamed(Approute.players);},),
            const SizedBox(
              height: 10,
            ),
             HomeButton(textbutton: "Matches Table",onPressed: () {Get.toNamed(Approute.matches);},),
            const SizedBox(
              height: 10,
            ),
             HomeButton(textbutton: "Syrian League",onPressed: () {Get.toNamed(Approute.syrianleague);},),
            const SizedBox(
              height: 10,
            ),
          ],
        );
  }
}