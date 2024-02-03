class UserInfo {
  String? email;
  String? username;

  UserInfo({this.email, this.username});

  UserInfo.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['username'] = username;
    return data;
  }
}
