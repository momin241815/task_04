class SignupRequestModel {
  final String firstName;
  final String lastName;
  final String address;
  final String gmail;
  final String password;

  SignupRequestModel({
    required this.firstName,
    required this.lastName,
    required this.address,
    required this.gmail,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      'first_name': firstName,
      'last_name': lastName,
      'address': address,
      'gmail': gmail,
      'password': password,
    };
  }
}