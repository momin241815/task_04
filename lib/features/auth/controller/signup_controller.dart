import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_04/features/auth/services/auth_service.dart';
import '../models/signup-request_model.dart';

class SignupController extends GetxController {
  final AuthService _authService = AuthService();

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final addressController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final isLoading = false.obs;

  Future<void> submitSignup() async {
    final firstName = firstNameController.text.trim();
    final lastName = lastNameController.text.trim();
    final gmail = emailController.text.trim();
    final address = addressController.text.trim();
    final password = passwordController.text;
    final confirmPassword = confirmPasswordController.text;

    if (firstName.isEmpty ||
        lastName.isEmpty ||
        gmail.isEmpty ||
        address.isEmpty ||
        password.isEmpty) {
      Get.snackbar('Error', 'সবগুলো ঘর পূরণ করুন');
      return;
    }

    if (password != confirmPassword) {
      Get.snackbar('Error', 'Password এবং Confirm Password মিলছে না');
      return;
    }

    isLoading.value = true;

    try {
      final requestModel = SignupRequestModel(
        firstName: firstName,
        lastName: lastName,
        address: address,
        gmail: gmail,
        password: password,
      );

      final response = await _authService.signUp(requestModel);

      if (response.success) {
        Get.snackbar('Success', response.message);
      } else {
        Get.snackbar('Failed', response.message);
      }
    } catch (e) {
      Get.snackbar('Error', 'কিছু একটা সমস্যা হয়েছে: $e');
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    addressController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}