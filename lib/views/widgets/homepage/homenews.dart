import 'package:alwathba/core/classes/handlingrequstveiw.dart';
import 'package:alwathba/data/models/posts_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/homepage/news_controller.dart';
import '../../../core/constant/color.dart';

class HomeNews extends StatelessWidget {
  const HomeNews({super.key});


  @override
  Widget build(BuildContext context) {
    NewsControllerImp controller = Get.put(NewsControllerImp());
    return Scaffold(
      backgroundColor: AppColor.background,
      body: GetBuilder<NewsControllerImp>(builder: (controller) {
        return HandlingDataView(
            statusRequest: controller.statusRequest, widget: controller.data.isEmpty?const Center(child: Text("No News"),):Container(
            padding: const EdgeInsets.all(1),
            child: ListView.builder(

              itemCount: controller.data.length,
              itemBuilder: (context, index){
                PostesModel userdata=controller.data[index];
                return   SizedBox(
                  width: double.infinity,
                  child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: (){controller.goToNewsDetails(userdata);},
                          child: Image.asset(
                            "assets/images/02.png",
                            width: double.infinity,

                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(userdata.content!.substring(0)),
                       const SizedBox(height: 10,),
                        Container(
                            padding:const EdgeInsets.all(5),decoration:BoxDecoration(
                          color:const Color(0xff181713),
                          borderRadius: BorderRadius.circular(20),
                        ),child: TextButton(onPressed: (){
                          controller.showButtomSheet();
                        }, child:const Text("Add Comment....",style: TextStyle(color: Colors.white),)))
                      ],
                    ),
                );
              },
            )));
      }),
    );
  }
}