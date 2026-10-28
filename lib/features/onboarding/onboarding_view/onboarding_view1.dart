import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_04/features/onboarding/widget/dot_indicator_widget.dart';
import 'package:task_04/utils/constants/app_color/app_color.dart';
import 'package:task_04/utils/constants/app_image_string/app_image_url_string.dart';
import 'package:task_04/utils/constants/app_string/app_string.dart';

class OnboardingView1 extends StatelessWidget {
  const OnboardingView1({super.key});

  @override
  Widget build(BuildContext context) {
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
              crossAxisAlignment: CrossAxisAlignment.center,
          
              children: [
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
          
                    TextButton(
                      onPressed: (){},
                      child: Text(AppString.skip,style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppColors.primary
                      )
                      ),
                    )
                  ],
                ),               // arrow & skip
               SizedBox(height: 20,),
          
          
               SvgPicture.asset(
                 height: 280,
                   width: 280,
                   AppImageUrlString.onboarding1,
                 fit: BoxFit.contain,
          
               ),
                SizedBox(height: 20,),
          
                Text(
                    AppString.onboardingTitle1,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      letterSpacing: -0.48,
                      height: 1.5,
          
          
          
                )),
          
                Text(
                    AppString.onboardingDescription1,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        letterSpacing: -0.48
          
                    )),
          
                SizedBox(height: 70,),
          
          
                // dot indicator //
          
                DotIndicator(count: 3, currentIndex: 0,),
                // Spacer(),
                SizedBox(height: 180,),
          
                ElevatedButton(
                    onPressed: (){},
                    style:ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                        minimumSize: Size(200, 55),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
          
          
                    ) ,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Next",style: GoogleFonts.poppins(
                          color:AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600
          
                    )),
                        SizedBox(width: 3,),
          
                        Icon(Icons.chevron_right,color: AppColors.white,)
                      ],
                    ))
          
          
          
          
          
          
              ],
          
            ),
          ),
        ),
      ),
    );
  }
}
