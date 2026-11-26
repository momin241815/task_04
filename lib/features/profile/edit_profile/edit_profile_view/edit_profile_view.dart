import 'package:flutter/material.dart';
import 'package:task_04/features/auth/login/widget/custom_button.dart';
import 'package:task_04/features/auth/login/widget/login_widget.dart';
import 'package:task_04/utils/constants/app_image_string/app_image_url_string.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Colors matching the design
    const lightGreenBg = Color(0xFFF7FCEB);
    const primaryGreen = Color(0xFF82C300);
    const textColor = Color(0xFF1E1E1E);
    const hintTextColor = Color(0xFFA0A5A8);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
              color: lightGreenBg,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                size: 18,
                color: primaryGreen,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
        title: const Text(
          'Edit Profile',
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),

            // Profile Image Section with Camera Icon
            Center(
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Color(0xFFC4B5FD), // Purple background tint
                    backgroundImage: AssetImage(
                      AppImageUrlString.profile,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        color: lightGreenBg,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                          )
                        ],
                      ),
                      child: const Icon(
                        Icons.camera_alt_outlined,
                        size: 20,
                        color: textColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // First Name Field
            const CustomTextField(
              label: "First Name",
              hint: "e.g. Kristin",
            ),
            const SizedBox(height: 16),

            // Last Name Field
            const CustomTextField(
              label: "Last Name",
              hint: "e.g. Cooper",
            ),
            const SizedBox(height: 16),

            // Email Address Field
            const CustomTextField(
              label: "Email Address",
              hint: "e.g. kristin.cooper@example.com",
            ),
            const SizedBox(height: 16),

            // Address Field
            const CustomTextField(
              label: "Address",
              hint: "e.g. 1234 Elm Street, Springfield, IL",
            ),
            const SizedBox(height: 30),

            // Update Button
            CustomButton(text: "Update", onPressed: (){}),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}