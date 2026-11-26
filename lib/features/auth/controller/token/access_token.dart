import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

final GetStorage _storage = GetStorage();

Future<void> saveAuthTokens({String? accessToken, String? refreshToken}) async {
  if (accessToken != null && accessToken.isNotEmpty) {
    await _storage.write('access_token', accessToken);
  }
  if (refreshToken != null && refreshToken.isNotEmpty) {
    await _storage.write('refresh_token', refreshToken);
  }
}