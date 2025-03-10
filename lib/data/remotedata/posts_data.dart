


import 'package:alwathba/core/constant/api_linl.dart';

import '../../core/classes/crud.dart';

class PostsData {
  Crud crud;

  PostsData(this.crud);

  getAllPosts() async {
    var response =
    await crud.getData(linkurl:ApiLink.posts
    );
    return response.fold((l) => l, (r) => r);
  }
}
