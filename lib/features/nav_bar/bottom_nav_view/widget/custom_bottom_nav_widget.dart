import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_04/features/nav_bar/bottom_nav_view/controller/bottom_nav_controller.dart';



class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  static const _green = Color(0xFF86C100);
  static const _items = [
    (Icons.home_outlined, 'Home'),
    (Icons.add, 'Add Task'),
    (Icons.account_circle_outlined, 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    final c = Get.find<BottomNavController>();

    return Container(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 12, offset: Offset(0, -2)),
        ],
      ),
      child: SizedBox(
        height: 64,
        child: Obx(
              () => Row(
            children: List.generate(_items.length, (i) {
              final selected = c.index.value == i;
              final (icon, label) = _items[i];

              return Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => c.change(i),
                  child: Center(
                    child: selected
                        ? Transform.translate(
                      offset: const Offset(0, -20),
                      child: Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          color: _green,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 4),
                          boxShadow: const [
                            BoxShadow(color: Colors.black26, blurRadius: 8),
                          ],
                        ),
                        child: Icon(icon, color: Colors.white),
                      ),
                    )
                        : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(icon, size: 28, color: Colors.black87),
                        const SizedBox(height: 4),
                        Text(label, style: const TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}