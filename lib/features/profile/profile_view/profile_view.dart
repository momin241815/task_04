import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_04/utils/constants/app_image_string/app_image_url_string.dart';
// নিজের প্রজেক্টের পাথ অনুযায়ী এই import ঠিক করে নিস:
// import 'package:task_04/utils/constants/app_image_string/app_image_url_string.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const Color darkGreen = Color(0xFF6BB800);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: Stack(
        children: [
          // 1. সবুজ শেপ (সবার নিচে)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 170,
            child: Image.asset(
              AppImageUrlString.profileShape,
              fit: BoxFit.cover,
            ),
          ),

          // 2. আইটেমগুলো (মাঝে)
          Positioned.fill(
            top: 260,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _MenuTile(
                    icon: Icons.account_circle_outlined,
                    title: 'My ProFile',
                    fontWeight: FontWeight.w500,
                    onTap: () {},
                  ),
                  _MenuTile(
                    icon: Icons.settings_outlined,
                    title: 'Account Setting',
                    fontWeight: FontWeight.w500,
                    onTap: () {},
                  ),
                  _MenuTile(
                    icon: Icons.notifications_outlined,
                    title: 'Notification',
                    fontWeight: FontWeight.w500,
                    onTap: () {},
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'More',
                    style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                  _MenuTile(
                    icon: Icons.receipt_long_outlined,
                    title: 'Terms & Condition',
                    fontWeight: FontWeight.w500,
                    onTap: () {},
                  ),
                  _MenuTile(
                    icon: Icons.menu_book_outlined,
                    title: 'Privacy policy',
                    fontWeight: FontWeight.w500,
                    onTap: () {},
                  ),
                  _MenuTile(
                    icon: Icons.help_outline,
                    title: 'Help/Support',
                    fontWeight: FontWeight.w500,
                    onTap: () {},
                  ),
                  _MenuTile(
                    icon: Icons.logout,
                    title: 'Log Out',
                    fontWeight: FontWeight.w500,
                    showArrow: false,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),

          // 3. প্রোফাইল পিক (সবার ওপরে, তাই আর কাটা পড়বে না)
          Positioned(
            top: 120,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(color: Colors.black26, blurRadius: 6),
                  ],
                ),
                child: CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage(AppImageUrlString.profilee),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MenuTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool showArrow;
  final FontWeight fontWeight;
  final VoidCallback onTap;

  const _MenuTile({
    required this.icon,
    required this.title,
    required this.onTap,
    this.showArrow = true,
    this.fontWeight = FontWeight.w400,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
            child: Row(
              children: [
                Icon(icon, color: ProfileScreen.darkGreen, size: 20),
                const SizedBox(width: 24),
                Expanded(
                  child: Text(
                    title,
                    style: GoogleFonts.poppins(fontSize: 13, fontWeight: fontWeight),
                  ),
                ),
                if (showArrow)
                  const Icon(
                    Icons.chevron_right,
                    color: ProfileScreen.darkGreen,
                    size: 22,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}