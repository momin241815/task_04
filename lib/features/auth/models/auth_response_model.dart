class AuthResponseModel {
  final bool success;
  final String message;
  final String? accessToken;
  final String? refreshToken;

  AuthResponseModel({
    required this.success,
    required this.message,
    this.accessToken,
    this.refreshToken,
  });

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) {
    final data = json['data'] is Map<String, dynamic>
        ? json['data'] as Map<String, dynamic>
        : null;

    return AuthResponseModel(
      success: json['success'] == true,
      message: json['message']?.toString() ?? '',
      accessToken: data?['access_token']?.toString() ?? json['token']?.toString(),
      refreshToken: data?['refresh_token']?.toString(),
    );
  }
}