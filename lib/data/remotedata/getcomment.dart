



import '../../core/classes/crud.dart';

class AddCommentData {
  Crud crud;

  AddCommentData(this.crud);

  getComment() async {
    var response =
    await crud.getData(linkurl:"https://alwathba.vercel.app/api/postdetails/28"
    );
    return response.fold((l) => l, (r) => r);
  }
}
