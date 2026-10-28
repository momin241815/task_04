import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_04/features/auth/login/widget/custom_button.dart';
import 'package:task_04/features/auth/login/widget/login_widget.dart';
import 'package:task_04/utils/constants/app_color/app_color.dart';
import 'package:task_04/utils/constants/app_string/app_string.dart';

class VerifyEmailView extends StatelessWidget {
  const VerifyEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent
      ),
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Padding(
          padding:  EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.3,),
      
              Text(AppString.verifyEmailTitle, style: GoogleFonts.poppins(
                color: AppColors.title,
                fontWeight: FontWeight.w500,
                fontSize: 28,
      
      
              )),
      
              Text(AppString.verifyEmailDescription, style: GoogleFonts.poppins(
                  color: AppColors.description,
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
      
      
              )),
      
              SizedBox(height: 30,),
              CustomTextField(label: "Email", hint: AppString.emailHint),
      
              SizedBox(height: 60,),
              
              CustomButton(text: "Send OTP", onPressed: (){})
      
      
            ],
          ),
        ),
      ),
    );
  }
}
