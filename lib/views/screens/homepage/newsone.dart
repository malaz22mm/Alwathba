import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/homepage/newsone_controller.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/imageasset.dart';

class NewsOne extends StatelessWidget {
  const NewsOne({super.key});

  @override
  Widget build(BuildContext context) {
    NewsOneControllerImp controllerImp = Get.put(NewsOneControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(controllerImp.data!.content!),
        actions: [
          Image.asset(AppImage.imagethree),
        ],
        elevation: 0.0,
      ),
      body: Container(
        color: AppColor.background,
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Text(
              "New News",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              AppImage.imagethree,
              width: 150.w,
              height: 150.h,
            ),
            const SizedBox(
              height: 15,
            ),
            ListTile(
              title: Text(
                controllerImp.data!.content!,
                style: const TextStyle(color: AppColor.grey),
              ),
              subtitle: Text(
                controllerImp.data!.postDate!,
                style: const TextStyle(color: AppColor.grey),
              ),
            ),
            Text(
              controllerImp.data!.postTime!,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
