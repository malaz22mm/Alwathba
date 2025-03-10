
import 'package:get/get.dart';

import '../../core/constant/routes.dart';

abstract class PlayersController extends GetxController{
    getdata();
  
}

class PlayersControllerImp extends PlayersController{



      @override
      getdata() {
        Get.toNamed(Approute.playerpage);
      }
}