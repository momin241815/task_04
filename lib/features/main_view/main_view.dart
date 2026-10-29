import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_04/features/home/home_view/home_view.dart';
import 'package:task_04/features/nav_bar/bottom_nav_view/controller/bottom_nav_controller.dart';

class MainView extends StatelessWidget {
  MainView({super.key});

  final nav = Get.put(BottomNavController());

  final pages = const [
    HomeView(),
    Center(child: Text('Add Task')),
    Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => pages[nav.index.value]);
  }
}