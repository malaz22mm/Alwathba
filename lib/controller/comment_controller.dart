import 'package:get/get.dart';

import '../core/classes/stutusconntection.dart';
import '../core/functions/handingdatacontroller.dart';
import '../core/services/services.dart';
import '../data/models/comment_model.dart';
import '../data/remotedata/getcomment.dart';
class CommentController extends GetxController {
  List<CommentModel> data = [];
  StatusRequest statusRequest = StatusRequest.none;

  AddCommentData addCommentData = AddCommentData(Get.find());
  MyServices myServices = Get.find();

  getComment() async {
    print("000000000000000000");
    statusRequest = StatusRequest.loading;
    update();

    var response = await addCommentData.getComment();
    statusRequest = handlingData(response);
    update();

    if (statusRequest == StatusRequest.seccess) {
      try {
        // Parsing the response to get the list of comments
        List<dynamic> commentRecords = response['commentRecords'];
        data = commentRecords.map((item) => CommentModel.fromJson(item)).toList();
        print(data.length);
      } catch (e) {
        print('Error parsing comments: $e');
      }
    }
  }

  @override
  void onInit() {
    getComment();
    super.onInit();
  }
}
