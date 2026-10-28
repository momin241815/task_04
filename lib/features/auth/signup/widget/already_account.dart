import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_04/utils/constants/app_color/app_color.dart';
import 'package:task_04/utils/constants/app_string/app_string.dart';

class AlreadyAccount extends StatelessWidget {
  const AlreadyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(AppString.alreadyAccount, style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 14

        )),

        TextButton(onPressed: (){}, child: Text(AppString.loginTextButton,
            style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.primary

            )))
      ],
    );
  }
}
