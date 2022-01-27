class UserModel {
  final String? username;
  final String? email;

  UserModel({
     required this.username,
     required this.email,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    String data = "data";
    return UserModel(
      username: json[data]["username"],
      email: json[data]["email"],
    );
  }
}

class UserRegistrationModel {
  final String username;
  final String email;
  final String phoneNumber;
  final String password;

  UserRegistrationModel({
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.password,
  });
}
