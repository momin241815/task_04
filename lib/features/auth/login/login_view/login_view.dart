import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_04/features/auth/login/widget/custom_button.dart';
import 'package:task_04/features/auth/login/widget/divider_widget.dart';
import 'package:task_04/features/auth/login/widget/dont_have_account.dart';
import 'package:task_04/features/auth/login/widget/login_widget.dart';
import 'package:task_04/utils/constants/app_color/app_color.dart';
import 'package:task_04/utils/constants/app_string/app_string.dart';

import '../widget/check_box.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark
      ),

      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight * 0.2),
                Text(
                  AppString.loginTitle,
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                ),
          
                Text(
                  AppString.loginDescription,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.5
                  )),
          
                SizedBox(height: 20,),
          
                // ===== Email ===== //
          
          
          
          
                // ==== Email field ====== ///
                
                CustomTextField( hint: AppString.emailHint, label: AppString.email,),
                SizedBox(height: 20,),
                CustomTextField(label: AppString.password,
                  hint: AppString.passwordHint,
                  isPassword: false,
                  iconData: Icons.visibility_off_rounded
                ),
          
                SizedBox(height: 5,),
          
                LoginCheckBox(),
          
                SizedBox(height: 20,),
                DividerWidget(),
          
                SizedBox(height: 10,),
                DontHaveAccount(),
                SizedBox(height: 20,),
                CustomButton(text: "Login", onPressed: (){})
          
          
          
          
          
          
          
          
          
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
