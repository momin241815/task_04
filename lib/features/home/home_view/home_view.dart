import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_04/features/home/widget/task_background_widget.dart';
import 'package:task_04/features/nav_bar/bottom_nav_view/bottom_nav_view.dart';
import 'package:task_04/features/home/widget/appbar_profile_widget.dart';
import 'package:task_04/utils/constants/app_color/app_color.dart';
import 'package:task_04/utils/constants/app_string/app_string.dart';



class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppbarProfileWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text("My Task",style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),),
            ),
            SizedBox(height: 10,),
            TaskBackgroundWidget(title: AppString.taskTitle1, description: AppString.taskDescription1,)
          ]),
      bottomNavigationBar: const BottomNavView(),
    );
  }
}