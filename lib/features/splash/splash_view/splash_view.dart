import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_04/features/auth/login/login_view/login_view.dart';
import 'package:task_04/utils/constants/app_image_string/app_image_url_string.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _c;
  late final Animation<double> _logoScale;
  late final Animation<double> _layerFade;
  late final Animation<double> _rotA;
  late final Animation<double> _rotB;

  @override
  void initState() {
    super.initState();
    _c = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2400),
    );

    // ১) সামনের লোগো পপ করে আসবে
    _logoScale = Tween<double>(begin: 0.6, end: 1).animate(
      CurvedAnimation(
        parent: _c,
        curve: const Interval(0.0, 0.4, curve: Curves.easeOutBack),
      ),
    );

    // ২) পেছনের লেয়ার ফেড হয়ে ঘুরে নিজের জায়গায় বসবে
    const layerInterval = Interval(0.4, 1.0, curve: Curves.easeOut);
    final layerCurve = CurvedAnimation(parent: _c, curve: layerInterval);

    _layerFade = Tween<double>(begin: 0, end: 1).animate(layerCurve);

    // লেয়ার A: ছবির নিজের হেলানো কোণে এসে থামবে (end = 0)
    _rotA = Tween<double>(begin: 0.4, end: 0).animate(layerCurve);

    // লেয়ার B: উল্টো দিকে প্রায় ৪০° ঘুরে থামবে
    // হালকা লেয়ার: ছবির নিজের কোণ (~-২০°) + ~৬৫° = প্রায় ৪৫° হীরা
    _rotB = Tween<double>(begin: 0, end: 1.13).animate(layerCurve);

    _c.forward().whenComplete(() async {
      await Future.delayed(const Duration(milliseconds: 400));
      Get.offAll(() =>  LoginView()); // তোমার লগইন স্ক্রিনের নাম দাও
    });
  }

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  Widget _layer(double angle, double opacity) {
    return Opacity(
      opacity: opacity,
      child: Transform.rotate(
        angle: angle,
        child: Image.asset(AppImageUrlString.rectangle, width: 200),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedBuilder(
          animation: _c,
          builder: (context, _) {
            final f = _layerFade.value;
            return Stack(
              alignment: Alignment.center,
              children: [
                _layer(_rotA.value, f * 1.0), // ছবির নিজের রং, বাড়তি হালকা না
                _layer(_rotB.value, f * 0.4), // এটা বেশি হালকা
                Transform.scale(
                  scale: _logoScale.value,
                  child: Image.asset(AppImageUrlString.splash, width: 150),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}