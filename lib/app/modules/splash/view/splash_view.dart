import 'package:flutter/material.dart';
import 'package:ttt_kernel/scr/controller/ttt_view.dart';

import '../../../../generated/colors.gen.dart';
import '../controller/splash_controller.dart';

class SplashView extends TttView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorName.darkBlue,
      body: Center(
        child: Text(
          "VFlick",
          style: TextStyle(
            fontSize: 80,
            color: ColorName.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
