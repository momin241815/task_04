import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_04/features/auth/login/widget/custom_button.dart';
import 'package:task_04/features/auth/login/widget/login_widget.dart';
import 'package:task_04/features/auth/verification_code/widget/custom_input_box.dart';
import 'package:task_04/utils/constants/app_color/app_color.dart';
import 'package:task_04/utils/constants/app_string/app_string.dart';

class VerificationCodeView extends StatelessWidget {
  const VerificationCodeView({super.key});

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
        body: Padding(
          padding:  EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.3,),
      
              Text(AppString.verificationCodeTitle, style: GoogleFonts.poppins(
                color: AppColors.title,
                fontWeight: FontWeight.w500,
                fontSize: 28,
      
      
              )),
      
              Text(AppString.verificationCodeDescription, style: GoogleFonts.poppins(
                color: AppColors.description,
                fontWeight: FontWeight.w400,
                fontSize: 13,
      
      
              )),
      
              SizedBox(height: 30,),
              CustomInputBoxes(),
      
              SizedBox(height: 60,),
      
              CustomButton(text: "Confirm", onPressed: (){})
      
      
            ],
          ),
        ),
      ),
    );
  }
}
