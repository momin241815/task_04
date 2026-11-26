import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_04/utils/constants/app_color/app_color.dart';
import 'package:task_04/utils/custom/custom_action_button.dart';

class TaskDetailsView extends StatelessWidget {
  const TaskDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Center(
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.inputBox,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new, size: 16, color: AppColors.primary),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        ),
        title: Text(
          "Tasks Details",
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        child: Column(
          children: [
            // Main Content Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.04),
                    blurRadius: 16,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Task Title Section
                  Row(
                    children: [
                      const Icon(Icons.assignment_outlined, size: 20, color: AppColors.primary),
                      const SizedBox(width: 10),
                      Text(
                        "Task Title",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      "Design Landing Page Header",
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: Colors.black54,
                      ),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Divider(color: Color(0xFFEEEEEE), thickness: 1),
                  ),

                  // Task Description Section
                  Row(
                    children: [
                      const Icon(Icons.description_outlined, size: 20, color: AppColors.primary),
                      const SizedBox(width: 10),
                      Text(
                        "Task Description",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      "Create a clean, responsive header section for the landing page. Include logo, navigation menu, search bar, and a primary call-to-action button. Ensure mobile responsiveness and use the brand green",
                      style: GoogleFonts.poppins(
                        fontSize: 12.5,
                        height: 1.4,
                        color: Colors.black54,
                      ),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Divider(color: Color(0xFFEEEEEE), thickness: 1),
                  ),

                  // Action Buttons (Delete & Edit)
                  Row(
                    children: [
                      // Delete Task Button
                      CustomActionButton(
                          title: "Delete Task",
                          icon: Icons.assessment_outlined,
                          borderColor: Colors.red, textColor: Colors.red,
                          onPressed: (){}
                      ),
                      const SizedBox(width: 12),

                      // Edit Task Button
                      CustomActionButton(
                          title: "Edit Task",
                          icon: Icons.edit,
                          borderColor: AppColors.primary, textColor: AppColors.primary,
                          onPressed: (){}
                      ),
                    ],
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