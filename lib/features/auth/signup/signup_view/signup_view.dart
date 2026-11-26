import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_04/features/auth/controller/signup_controller.dart';
import 'package:task_04/features/auth/login/widget/custom_button.dart';
import 'package:task_04/features/auth/login/widget/divider_widget.dart';
import 'package:task_04/features/auth/login/widget/login_widget.dart';
import 'package:task_04/features/auth/signup/widget/already_account.dart';
import 'package:task_04/features/auth/signup/widget/check_box.dart';
import 'package:task_04/utils/constants/app_color/app_color.dart';
import 'package:task_04/utils/constants/app_string/app_string.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final SignupController controller = Get.put(SignupController());

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight * 0.06),
                Text(
                  AppString.createTitle,
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: AppColors.title,
                  ),
                ),
                Text(
                  AppString.createDescription,
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.5,
                    color: AppColors.description,
                  ),
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  label: AppString.firstname,
                  hint: AppString.nameHint,
                  controller: controller.firstNameController,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  label: AppString.lastName,
                  hint: AppString.lastnameHint,
                  controller: controller.lastNameController,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  label: AppString.email,
                  hint: AppString.emailHint,
                  controller: controller.emailController,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  label: AppString.address,
                  hint: AppString.addressHint,
                  controller: controller.addressController,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  label: AppString.password,
                  hint: AppString.passwordHint,
                  controller: controller.passwordController,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  label: AppString.confirmPassword,
                  hint: AppString.passwordHint,
                  controller: controller.confirmPasswordController,
                ),
                const SizedBox(height: 10),
                SignUpCheckBox(),
                const SizedBox(height: 20),
                const DividerWidget(),
                const SizedBox(height: 10),
                const AlreadyAccount(),
                const SizedBox(height: 20),
                Obx(() => CustomButton(
                    text: controller.isLoading.value ? 'Please wait...' : 'Continue',
                    onPressed: () {
                      if (!controller.isLoading.value) {
                        controller.submitSignup();
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}