class PostesModel {
  int? id;
  int? userId;
  String? content;
  int? priority;
  String? postDate;
  String? postTime;
  User? user;
  //List<>? media;

  PostesModel(
      {this.id,
        this.userId,
        this.content,
        this.priority,
        this.postDate,
        this.postTime,
        this.user,
       // this.media
      });

  PostesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    content = json['content'];
    priority = json['priority'];
    postDate = json['postDate'];
    postTime = json['postTime'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
   // if (json['media'] != null) {
     // media = <Null>[];
      //json['media'].forEach((v) {
       // media!.add(new Null.fromJson(v));
    //  });
    //}
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['userId'] = userId;
    data['content'] = content;
    data['priority'] = priority;
    data['postDate'] = postDate;
    data['postTime'] = postTime;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    // if (this.media != null) {
    //   data['media'] = this.media!.map((v) => v.toJson()).toList();
    // }
     return data;
  }
}

class User {
  int? id;
  int? roleId;
  String? fname;
  String? lname;
  bool? gender;
  bool? blocked;
  String? email;
  String? mobile;
  String? password;
  String? createdAt;
  Null resetPasswordToken;
  Null tokenCreatedAt;
  String? verificationToken;
  String? verificationTokenCreationAt;
  bool? verificated;

  User(
      {this.id,
        this.roleId,
        this.fname,
        this.lname,
        this.gender,
        this.blocked,
        this.email,
        this.mobile,
        this.password,
        this.createdAt,
        this.resetPasswordToken,
        this.tokenCreatedAt,
        this.verificationToken,
        this.verificationTokenCreationAt,
        this.verificated});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    roleId = json['roleId'];
    fname = json['Fname'];
    lname = json['Lname'];
    gender = json['gender'];
    blocked = json['blocked'];
    email = json['email'];
    mobile = json['mobile'];
    password = json['password'];
    createdAt = json['createdAt'];
    resetPasswordToken = json['resetPasswordToken'];
    tokenCreatedAt = json['tokenCreatedAt'];
    verificationToken = json['verificationToken'];
    verificationTokenCreationAt = json['verificationTokenCreationAt'];
    verificated = json['verificated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['roleId'] = roleId;
    data['Fname'] = fname;
    data['Lname'] = lname;
    data['gender'] = gender;
    data['blocked'] = blocked;
    data['email'] = email;
    data['mobile'] = mobile;
    data['password'] = password;
    data['createdAt'] = createdAt;
    data['resetPasswordToken'] = resetPasswordToken;
    data['tokenCreatedAt'] = tokenCreatedAt;
    data['verificationToken'] = verificationToken;
    data['verificationTokenCreationAt'] = verificationTokenCreationAt;
    data['verificated'] = verificated;
    return data;
  }
}