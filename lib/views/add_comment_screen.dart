import 'package:alwathba/core/classes/handlingrequstveiw.dart';
import 'package:alwathba/data/models/comment_model.dart';
import 'package:alwathba/views/widgets/comment/add_comment_card.dart';
import 'package:alwathba/views/widgets/comment/card_comment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/comment_controller.dart';
import '../core/constant/color.dart';

class AddCommentScreen extends StatelessWidget {
  const AddCommentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CommentController commentControllelr = Get.put(CommentController());
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        title: const Text(
          "Comment",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        elevation: 1,
        backgroundColor: AppColor.primarycolor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const AddCommentCard(),
              GetBuilder<CommentController>(builder: (controller) {
                return HandlingDataView(
                    statusRequest: controller.statusRequest,
                    widget: SizedBox(
                      height: MediaQuery.of(context).size.height*0.7,
                      child: ListView.builder(itemCount: controller.data.length,itemBuilder: (context, index) {
                        CommentModel data = controller.data[index];
                        return CommentCard(
                            firstName: data.user!.fname!, lastName:data.user!.lname!, comment: data.content!);
                      }),
                    ));
              })
            ],
          ),
        ),
      ),
    );
  }
}
