class UserModel {
  final String? username;
  final String? email;
  final String? phoneNumber;

  UserModel({
     required this.username,
     required this.email,
     required this.phoneNumber,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    String data = "data";
    return UserModel(
      username: json[data]["username"],
      email: json[data]["email"],
      phoneNumber: json[data]["phoneNumber"],
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
