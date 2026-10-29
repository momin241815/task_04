import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:task_04/features/auth/login/login_view/login_view.dart';
import 'package:task_04/features/auth/set_new_password/set_new_pass_view/set_new_pass_view.dart';
import 'package:task_04/features/auth/signup/signup_view/signup_view.dart';
import 'package:task_04/features/auth/verification_code/verification_code.dart';
import 'package:task_04/features/auth/verify_email/verify_email_view/verify_email_view.dart';
import 'package:task_04/features/main_view/main_view.dart';
import 'package:task_04/features/splash/splash_view/splash_view.dart';

import 'features/onboarding/onboarding_view/onboarding_view1.dart';
import 'features/onboarding/onboarding_view/onboarding_view2.dart';
import 'features/onboarding/onboarding_view/onboarding_view3.dart';


void main() {
  runApp( Task04());
}

class Task04 extends StatelessWidget {
  Task04({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MainView(),
    );
  }
}


