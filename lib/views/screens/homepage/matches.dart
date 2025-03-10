import 'package:alwathba/views/widgets/matech/coustom_card_match.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/imageasset.dart';

class Matches extends StatelessWidget {
  const Matches({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.primarycolor,
          title: const Text('Matches', style: TextStyle(color: Colors.white),),
          actions: [
            Image.asset(AppImage.imagethree),
          ],
          elevation: 0.0,
        ),
        body: Stack(
          children: [
            Center(child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    opacity: 0.3,
                    image: AssetImage(AppImage.imagethree),)
              ),
            )),
            Container(
              color: AppColor.background,
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.primarycolor),
                      child: const Text(
                        "Matches Table",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: 20, itemBuilder: (context, index) {
                      return const CoustomCardMatched(title: "Alwethba VS Alkaramah",
                          subtit: "19/10/2024",
                          imageurl1: AppImage.imagethree,
                          imageUrl2: AppImage.imagetwo,
                          date: "9.45PM");
                    }),
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}
