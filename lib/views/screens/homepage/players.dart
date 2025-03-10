import 'package:alwathba/views/widgets/palyer_widget/coustom_card_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/homepage/players_controller.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/imageasset.dart';

class Players extends StatelessWidget {
  const Players({super.key});

  @override
  Widget build(BuildContext context) {
    PlayersControllerImp controller = Get.put(PlayersControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primarycolor,
        title: const Text(
          'Players',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Image.asset(AppImage.imagethree),
        ],
        elevation: 0.0,
      ),
      body: Container(
          color: AppColor.background,
          padding: const EdgeInsets.all(10),
          child: GridView.builder(
              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 0.1,
                crossAxisSpacing:0.6,
                  childAspectRatio: 0.725
              ),
              itemCount: 25,
              itemBuilder: (context, index) {
                return const CoustomPlayerCard(
                    title: "Ameen Hamsho",
                    subtitle: "23Y old",
                    imageurl: "assets/images/IMG_7289-10-104.png");
              })),
    );
  }
}
