import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nabula/utils/app_assets.dart';
import 'package:nabula/utils/app_colors.dart';
import 'package:nabula/utils/routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.toNamed(Routes.getStarted);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColorStatic,
      body: Center(
        child: SvgPicture.asset(
          AppAssets.logo,
        ),
      ),
    );
  }
}
