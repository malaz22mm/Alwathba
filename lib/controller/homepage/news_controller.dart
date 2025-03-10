import 'package:alwathba/data/models/posts_model.dart';
import 'package:get/get.dart';

import '../../core/classes/stutusconntection.dart';
import '../../core/constant/imageasset.dart';
import '../../core/constant/routes.dart';
import '../../core/functions/handingdatacontroller.dart';
import '../../core/services/services.dart';
import '../../data/remotedata/posts_data.dart';

abstract class NewsController extends GetxController {
  getdata();

  goToNewsDetails(PostesModel data);
}

class NewsControllerImp extends NewsController {
  StatusRequest statusRequest = StatusRequest.none;
  List<PostesModel> data = [];

  PostsData postsData = PostsData(Get.find());
  MyServices myServices = Get.find();

  List news = [
    {
      "image": AppImage.imagethree,
      "title": "AlWathba Club",
    },
    {
      "image": AppImage.imagethree,
      "title": "AlWathba Club",
    },
  ];

  @override
  getdata() async {
    print("000000000000000000");
    statusRequest = StatusRequest.loading;
    update();

    var response = await postsData.getAllPosts();
    statusRequest = handlingData(response);
    update();

    if (statusRequest == StatusRequest.seccess) {
      print("0000000000000000000000000000000000000000");
      data =
          (response as List).map((item) => PostesModel.fromJson(item)).toList();
      print(data.length);
    }
  }

  showButtomSheet() {
    Get.toNamed(Approute.addcomment);
  }

  @override
  void onInit() {
    getdata();
    super.onInit();
  }

  @override
  goToNewsDetails(PostesModel data) {
    print(data.user);
    Get.toNamed(Approute.newsone, arguments: data);
  }

}
