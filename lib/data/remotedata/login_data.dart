


import 'package:alwathba/core/constant/api_linl.dart';

import '../../core/classes/crud.dart';

class SignInData {
  Crud crud;

  SignInData(this.crud);

  PostSignUpdata(
      String email, String password) async {
    var response =
    await crud.postDataRow(linkurl:ApiLink.login ,token:'',data:  {
      'password': password,
      'email': email,

    },
    );
    return response.fold((l) => l, (r) => r);
  }
}
