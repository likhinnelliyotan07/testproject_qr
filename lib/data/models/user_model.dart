class UserModel {
  String? uid;
  String? displayName;
  String? profilePic;
  String? email;

  static UserModel fromJson(Map<String, dynamic> map) {
    return UserModel()
      ..uid = map['uid']
      ..displayName = map['displayName']
      ..profilePic = map['profilePic']
      ..email = map['email'];
  }
}
