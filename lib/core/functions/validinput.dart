import 'dart:developer';

import 'package:get/get.dart';

validInput(String val,int min,int max,String type){

  if(type=="username"){
    if(!GetUtils.isUsername(val)){
       log("username not valid");
    }
  }

  if(type=="email"){
    if(!GetUtils.isEmail(val)){
       log("email not valid");
    }
  }

  if(type=="phone"){
    if(!GetUtils.isPhoneNumber(val)){
       log("phoneNumber not valid");
    }
  }

  if(val.length < min){
    log("can't be less than $min");
  }

  if(val.length > max){
    log("can't be larger than $max");
  }

  if(val.isEmail){
    log("can't be Empty");
  }
}