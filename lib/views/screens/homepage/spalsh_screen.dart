
import 'package:alwathba/core/functions/urluncher.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/imageasset.dart';
import '../../../core/constant/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Image.asset(AppImage.imagethree),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Welcome In AlWathba Club",
              style: TextStyle(fontSize: 23, color: AppColor.primarycolor),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 120,
            ),
            MaterialButton(
              onPressed: () {Get.toNamed(Approute.bottomnavigation);},
              child:  Row(
                children: [
                const   SizedBox(
                    width: 170,
                  ),
                  const Text(
                    "Let's Go",
                    style:
                        TextStyle(fontSize: 23, color: AppColor.primarycolor),
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    size: 40,
                    color: AppColor.primarycolor,
                  ),
                  ElevatedButton(onPressed: (){
                    UrlLuncher().launchURL();
                  }, child: const Text("Daaaaaaaaa"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
