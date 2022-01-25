class UserModel {
  final String? username;
  final String? email;
  final String? phoneNumber;

  UserModel({
     this.username = "None",
     this.email = "None",
     this.phoneNumber = "None",
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      username: json["username"],
      email: json["email"],
      phoneNumber: json["phoneNumber"],
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
