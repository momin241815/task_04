import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_04/utils/constants/app_color/app_color.dart';
import 'package:task_04/utils/constants/app_image_string/app_image_url_string.dart';

import '../../profile/my_profile/my_profile_view/my_profile_view.dart';
// নিজের প্রজেক্টের পাথ অনুযায়ী import ঠিক করে নিস:
// import 'package:task_04/utils/constants/app_image_string/app_image_url_string.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  static const Color green = Color(0xFF6BB800);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 8),

              // টপ বার
              Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    'Account Settings',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _CircleButton(
                        icon: Icons.chevron_left,
                        onTap: () => Navigator.maybePop(context),
                      ),

                    ],
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // প্রোফাইল পিক
              const _InfoTile(
                icon: Icons.lock_outline_rounded,
                text: 'Change Password',
                iconColor: Colors.green,
                textColor: Colors.black,

              ),
              const _InfoTile(
                icon: Icons.person_outline_rounded,
                text: 'Delete Account',
                iconColor: Colors.red,
                textColor:Colors.red ,
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class _CircleButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _CircleButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: onTap,
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: AppColors.inputBox,
          shape: BoxShape.circle,

          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 4),
          ],
        ),
        child: Icon(icon, color: MyProfileScreen.green, size: 20),
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor; // Changed to Flutter's Color
  final Color textColor; // Added text color

  const _InfoTile({
    required this.icon,
    required this.text,
    required this.iconColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Icon color applied here
          Icon(icon, color: iconColor, size: 24),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              // Text color applied here
              style: GoogleFonts.poppins(
                fontSize: 13,
                color: textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}