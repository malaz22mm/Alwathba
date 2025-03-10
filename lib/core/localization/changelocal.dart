import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/services.dart';

class LocalController extends GetxController{
  Locale? langauge;
  MyServices myServices=Get.find();

  changeLangauge(String langcode ){
    Locale locale= Locale(langcode);
    myServices.sharedPreferences.setString("lang",langcode);
    Get.updateLocale(locale);
    
  }
  @override
  void onInit() {
    String? sharedPreflang=myServices.sharedPreferences.getString("lang");
    if(sharedPreflang=="ar"){
      langauge=const Locale("ar");
    } else if(sharedPreflang=="en"){
      langauge=const Locale("en");
    }else{
      langauge=Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}