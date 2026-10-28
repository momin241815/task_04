import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_04/features/auth/login/widget/check_box.dart';
import 'package:task_04/features/auth/login/widget/custom_button.dart';
import 'package:task_04/features/auth/login/widget/divider_widget.dart';
import 'package:task_04/features/auth/login/widget/dont_have_account.dart';
import 'package:task_04/features/auth/login/widget/login_widget.dart';
import 'package:task_04/features/auth/signup/widget/already_account.dart';
import 'package:task_04/features/auth/signup/widget/check_box.dart';
import 'package:task_04/utils/constants/app_color/app_color.dart';
import 'package:task_04/utils/constants/app_string/app_string.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark
      ),
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenheight * 0.06),
                Text(AppString.createTitle,style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: AppColors.title
                ),),
      
                Text(AppString.createDescription,style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5,
                  color: AppColors.description
                ),),
      
                SizedBox(height: 20,),
                
                CustomTextField(label:AppString.firstname, hint: AppString.nameHint),
                SizedBox(height: 20,),
      
                CustomTextField(label:AppString.lastName, hint: AppString.lastnameHint),
                SizedBox(height: 20,),
      
                CustomTextField(label:AppString.email, hint: AppString.emailHint),
                SizedBox(height: 20,),
      
                CustomTextField(label:AppString.address, hint: AppString.addressHint),
      
      
                SizedBox(height: 20,),
                CustomTextField(label:AppString.password, hint: AppString.passwordHint),
      
                SizedBox(height: 20,),
                CustomTextField(label:AppString.confirmPassword, hint: AppString.passwordHint),
      
                SizedBox(height: 10,),
      
                SignUpCheckBox(),
      
                SizedBox(height: 20,),
      
                DividerWidget(),
      
                SizedBox(height: 10,),
      
                AlreadyAccount(),
      
                SizedBox(height: 20,),
      
                CustomButton(text: "Continue", onPressed: (){})
      
      
      
      
      
      
      
              ],
            ),
          ),
        ),
      ),
    );
  }
}
