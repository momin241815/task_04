import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_04/utils/constants/app_color/app_color.dart';
import 'package:task_04/utils/constants/app_image_string/app_image_url_string.dart';
// নিজের প্রজেক্টের পাথ অনুযায়ী import ঠিক করে নিস:
// import 'package:task_04/utils/constants/app_image_string/app_image_url_string.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

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
                    'My ProFile',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _CircleButton(
                        icon: Icons.chevron_left,
                        onTap: () => Navigator.maybePop(context),
                      ),
                      _CircleButton(
                        icon: Icons.edit_outlined,
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // প্রোফাইল পিক
              Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(color: Colors.black12, blurRadius: 8),
                  ],
                ),
                child: CircleAvatar(
                  radius: 44,
                  backgroundImage: AssetImage(AppImageUrlString.profilee),
                ),
              ),

              const SizedBox(height: 14),

              Text(
                'Mojahid',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 18),

              const _InfoTile(
                icon: Icons.account_circle_outlined,
                text: 'Mojahid Islam',
              ),
              const _InfoTile(
                icon: Icons.alternate_email,
                text: 'Samaltman@gmail.com',
              ),
              const _InfoTile(
                icon: Icons.location_on_outlined,
                text: '1234 Elm Street, Springfield, IL',
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

  const _InfoTile({required this.icon, required this.text});

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
          Icon(icon, color: MyProfileScreen.green, size: 24),
          const SizedBox(width: 8),
          Container(width: 1.5, height: 14, color: MyProfileScreen.green),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.poppins(fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}