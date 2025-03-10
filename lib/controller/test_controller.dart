
import 'package:alwathba/core/classes/stutusconntection.dart';
import 'package:get/get.dart';

import '../data/datasoursce/remote/test_data.dart';

class TestController extends GetxController{
  late StatusRequest statusRequest;
    TestData testData=TestData(Get.find());
    
    List data=[];


  getData() async{


  }
  @override
  void onInit() {
     getData();
    super.onInit();
  }
}