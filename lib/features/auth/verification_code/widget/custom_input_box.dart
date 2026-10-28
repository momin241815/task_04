import 'package:flutter/material.dart';
import 'package:task_04/utils/constants/app_color/app_color.dart';

class CustomInputBoxes extends StatelessWidget {
  const CustomInputBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    // ৬টি ঘরের মান (প্রয়োজন অনুযায়ী স্টেট ম্যানেজমেন্ট দিয়ে ডাইনামিক করতে পারেন)
    final List<String?> values = ['1', '1', '1', null, null, null];

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(6, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.inputBox, // হালকা ব্যাকগ্রাউন্ড কালার
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: AppColors.description.withOpacity(0.2),
                offset: Offset(0, 2),
                blurRadius: 1

              )
            ]
          ),
          child: Center(
            child: values[index] != null
                ? Text(
              values[index]!,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4A5568),
              ),
            )
                : Container(
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                color: Color(0xFF4A5568), // ডটের কালার
                shape: BoxShape.circle,
              ),
            ),
          ),
        );
      }),
    );
  }
}