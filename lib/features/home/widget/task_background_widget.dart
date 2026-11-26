import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_04/utils/constants/app_color/app_color.dart';
import 'package:task_04/utils/constants/app_image_string/app_image_url_string.dart';

class TaskBackgroundWidget extends StatelessWidget {
  const TaskBackgroundWidget({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  static const double _radius = 6;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.inputBox,
        borderRadius: BorderRadius.circular(_radius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 24,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(_radius),
        child: Stack(
          children: [
            Positioned.fill(
              child: SvgPicture.asset(
                AppImageUrlString.taskBg,
                fit: BoxFit.cover,
                alignment: Alignment.centerRight,
              ),
            ),
            Padding(
              // Nicher dike aro space/boro korar jonno vertical padding 10 theke bariye 16 kora holo
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    AppImageUrlString.taskLogo,
                    height: 36, // Logo size ektu barano holo
                  ),
                  const SizedBox(height: 10), // Spacing ektu barano holo
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.title,
                    ),
                  ),
                  const SizedBox(height: 6), // Spacing ektu barano holo
                  Text(
                    description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      height: 1.3, // Line height ektu shundor rakha holo
                      color: AppColors.description,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}