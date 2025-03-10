class CommentModel {
  int? id;
  int? userId;
  int? postId;
  String? content;
  String? commentDate;
  String? commentTime;
  User? user;
  List<Media>? media;

  CommentModel(
      {this.id,
        this.userId,
        this.postId,
        this.content,
        this.commentDate,
        this.commentTime,
        this.user,
        this.media});

  CommentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    postId = json['postId'];
    content = json['content'];
    commentDate = json['commentDate'];
    commentTime = json['commentTime'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    if (json['media'] != null) {
      media = <Media>[];
      json['media'].forEach((v) {
        media!.add(Media.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['userId'] = userId;
    data['postId'] = postId;
    data['content'] = content;
    data['commentDate'] = commentDate;
    data['commentTime'] = commentTime;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    if (media != null) {
      data['media'] = media!.map((v) => v.toJson()).toList();
    }
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
  String? resetPasswordToken;
  String? tokenCreatedAt;
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

class Media {
  int? id;
  int? commentId;
  String? imagePath;

  Media({this.id, this.commentId, this.imagePath});

  Media.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    commentId = json['commentId'];
    imagePath = json['imagePath'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['commentId'] = commentId;
    data['imagePath'] = imagePath;
    return data;
  }
}