import 'package:alwathba/data/models/posts_model.dart';
import 'package:get/get.dart';


abstract class NewsOneController extends GetxController{
    getdata();
  
}

class NewsOneControllerImp extends NewsOneController{
  PostesModel? data;
     

      @override
      getdata() {

      }
      @override
  void onInit() {
    data=Get.arguments;
    print(data);
    super.onInit();
  }
}