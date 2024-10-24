import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nabula/utils/app_assets.dart';
import 'package:nabula/utils/app_colors.dart';
import 'package:nabula/utils/routes.dart';
import 'package:nabula/utils/widgets/primary_button.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColorStatic,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 62.h,
              ),
              Text(
                "NEBULA",
                style: GoogleFonts.inriaSerif(
                  fontSize: 36.sp,
                  color: AppColors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 25.h,
                  left: 45.w,
                  right: 45.w,
                  bottom: 125.h,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(19.r),
                  child: Image.asset(
                    AppAssets.getStarted,
                    width: 284.w,
                    height: 425.h,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Spacer(),
              Container(
                width: 375.w,
                height: 120.h,
                padding: EdgeInsets.all(10.sp),
                decoration: BoxDecoration(
                  color: AppColors.brownColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20.r),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PrimaryBtn(
                          title: "Log in",
                          onPressed: () {
                            Get.toNamed(Routes.login);
                          },
                          btnwidth: 168.w,
                          height: 38.h,
                          btnColor: AppColors.lightGreenColor,
                        ),
                        PrimaryBtn(
                          title: "Sign up",
                          onPressed: () {
                            Get.toNamed(Routes.signUp);
                          },
                          btnwidth: 168.w,
                          height: 38.h,
                        ),
                      ],
                    ),
                    Text(
                      "By signing up, I agree to Nabula's Terms & Conditions, & Community Guidelines. Privacy Policy.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontSize: 11.sp,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
