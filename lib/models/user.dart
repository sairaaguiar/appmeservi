class UserData {
  final String? username;
  final String? email;
  final String? customField;

  UserData({this.username, this.email, this.customField});

  bool get isValid => username != null && email != null;
}