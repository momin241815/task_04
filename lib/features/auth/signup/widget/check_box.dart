import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_04/features/auth/controller/login_controller.dart';
import 'package:task_04/utils/constants/app_color/app_color.dart';
import 'package:task_04/utils/constants/app_string/app_string.dart';

class SignUpCheckBox extends StatelessWidget {
   SignUpCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Row(
      children: [
        Obx(() => Transform.scale(
          scale: 0.85,
          child: Checkbox(
            visualDensity: VisualDensity.compact,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
            side: WidgetStateBorderSide.resolveWith((states) {
              return BorderSide(
                color: states.contains(WidgetState.selected)
                    ? AppColors.background      // tick deya obosthay border
                    : AppColors.checkBox,    // tick chhara obosthay border
                width: 1.5,
              );
            }),

            activeColor: AppColors.primary,
            value: controller.rememberMe.value,
            onChanged: (value) => controller.rememberMe.value = value ?? false,
          ),
        )),
        Text(AppString.signupCheckBoxText, style: GoogleFonts.poppins(fontSize: 12)),
      ],
    );
  }
}
