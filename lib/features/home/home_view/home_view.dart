import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_04/features/home/widget/appbar_profile_widget.dart';
import 'package:task_04/utils/constants/app_color/app_color.dart';

import '../../../utils/constants/app_string/app_string.dart';
import '../../nav_bar/bottom_nav_view/bottom_nav_view.dart';
import '../widget/task_background_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppbarProfileWidget(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0), // <--- Protita card screen er du pas theke shundor gap nibe
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 4, bottom: 10), // Title ektu align kora holo
              child: Text(
                "My Task",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            const TaskBackgroundWidget(
              title: AppString.taskTitle1,
              description: AppString.taskDescription1,
            ),
            const TaskBackgroundWidget(
              title: AppString.taskTitle2,
              description: AppString.taskDescription2,
            ),
            const TaskBackgroundWidget(
              title: AppString.taskTitle3,
              description: AppString.taskDescription3,
            ),
            const TaskBackgroundWidget(
              title: AppString.taskTitle4,
              description: AppString.taskDescription4,
            ),
            const TaskBackgroundWidget(
              title: AppString.taskTitle5,
              description: AppString.taskDescription5,
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavView(),
    );
  }
}