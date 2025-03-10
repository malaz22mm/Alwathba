import 'package:alwathba/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/services.dart';
class MyMiddleWare extends GetMiddleware{
  MyServices myServices=Get.find();
  @override
  int get  priority => 1;
  @override
  RouteSettings? redirect(String? route) {
    if(myServices.sharedPreferences.getString("login")=="2"){
      return const RouteSettings(name:Approute.bottomnavigation);
    }
    return null;
  }


}