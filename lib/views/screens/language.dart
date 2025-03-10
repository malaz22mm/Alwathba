
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/color.dart';
import '../../core/constant/routes.dart';
import '../../core/localization/changelocal.dart';
import '../widgets/language/custombuttonlang.dart';

class Language extends GetView<LocalController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      color: AppColor.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("1".tr,style: Theme.of(context).textTheme.bodyLarge,),
          const SizedBox(height: 20,),
          CustomButtoLang(textbutoon: "Ar",onPressed: (){
            controller.changeLangauge("ar");
            Get.toNamed(Approute.onboarding);
          },),
          CustomButtoLang(textbutoon: "En",onPressed: (){
            controller.changeLangauge("en");
             Get.toNamed(Approute.onboarding);
          },)
        ],
      ),
    );
  }
}