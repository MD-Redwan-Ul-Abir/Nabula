import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nabula/utils/app_colors.dart';

import 'utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: GetMaterialApp(
        title: 'Nabula',
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: AppColors.primaryColorStatic),
          useMaterial3: true,
          scaffoldBackgroundColor: AppColors.white,
          fontFamily: GoogleFonts.workSans().fontFamily,
        ),
        // initialBinding: InitialBindings(),
        initialRoute: Routes.splash,
        getPages: Routes.pages,
      ),
    );
  }
}
