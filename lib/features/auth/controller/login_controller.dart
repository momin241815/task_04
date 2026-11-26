import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_04/features/auth/services/auth_service.dart';

class LoginController extends GetxController {
  final AuthService _authService = AuthService();
  final GetStorage _storage = GetStorage();
  final RxBool rememberMe = false.obs;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final isLoading = false.obs;

  Future<void> submitLogin() async {
    final gmail = emailController.text.trim();
    final password = passwordController.text;

    if (gmail.isEmpty || password.isEmpty) {
      Get.snackbar('Error', 'ইমেইল এবং পাসওয়ার্ড দিন');
      return;
    }

    isLoading.value = true;

    try {
      final response = await _authService.signIn(
        gmail: gmail,
        password: password,
      );

      if (response.success && response.accessToken != null) {
        await _storage.write('access_token', response.accessToken);
        if (response.refreshToken != null) {
          await _storage.write('refresh_token', response.refreshToken);
        }
        Get.snackbar('Success', response.message);
      } else {
        Get.snackbar('Failed', response.message);
      }
    } catch (e) {
      Get.snackbar('Error', 'কিছু একটা সমস্যা হয়েছে: $e');
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}