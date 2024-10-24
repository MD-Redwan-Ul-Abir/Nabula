import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nabula/utils/app_colors.dart';
import 'package:nabula/utils/widgets/custom_text_button.dart';
import 'package:nabula/utils/widgets/custom_text_field.dart';

import '../../utils/routes.dart';
import '../../utils/widgets/primary_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: AppColors.primaryColorStatic,
      ),
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Padding(
          padding: EdgeInsets.only(
            left: 22.w,
            right: 22.w,
          ),
          child: SingleChildScrollView(
            // Added SingleChildScrollView to prevent overflow
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).padding.top,
                  color: AppColors.primaryColorStatic,
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 22.h),
                      child: Row(
                        children: [
                          Text(
                            'NEBULA',
                            style: GoogleFonts.inriaSerif(
                                color: AppColors.primaryColorStatic,
                                fontSize: 36.sp), // Optional styling
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 36.h,
                    ),
                    Text(
                      'Login to your account',
                      style: GoogleFonts.robotoMono(
                          color: Colors.black,
                          fontSize: 21.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -1.3,
                          wordSpacing:
                              -3 // Use a negative value to reduce letter spacing
                          ),
                    ),
                    SizedBox(
                      height: 45.h,
                    ),
                    CustomTextField(
                      hintText: ' Email',
                      filledstatus: true,
                      filledColor:
                          AppColors.primaryColorStatic.withOpacity(0.07),
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    CustomTextField(
                      hintText: ' Password',
                      suffixSvg: 'assets/icons/eye.svg',
                      filledstatus: true,
                      filledColor:
                          AppColors.primaryColorStatic.withOpacity(0.07),
                    ),
                    SizedBox(
                      height: 52.h,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CustomTextButton(
                        text: 'Forget password ?',
                        color: AppColors.buttonColor,
                        fontSize: 15,
                        onPressed: () {},
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    PrimaryBtn(
                      title: "Continue",
                      titleStyle: GoogleFonts.workSans(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Get.toNamed(Routes.login);
                      },
                      btnwidth: double.infinity,
                      height: 47.h,
                      btnColor: AppColors.buttonColor,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.w, right: 4.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: GoogleFonts.workSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 15.5.sp,
                              color: Colors.black,
                            ),
                          ),
                          CustomTextButton(
                              text: 'Sign up',
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryColorStatic,
                              fontSize: 16,
                              onPressed: () {
                                Get.toNamed(Routes.signUp);
                              })
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    SvgPicture.asset(
                      'assets/icons/Separator.svg',
                    ),
                    SizedBox(
                      height: 17.1.h,
                    ),
                    Stack(
                      children: [
                        Positioned(
                          left: 0, // Adjust position if needed
                          right: 0, // Adjust position if needed
                          child: Container(
                            width: double.infinity,
                            height: 47.h,
                            color: Colors.transparent,
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 12.w),
                                  child: SvgPicture.asset(
                                      'assets/icons/Google.svg'),
                                )),
                            // Some background or overlay
                          ),
                        ),
                        PrimaryBtn(
                          title: "Continue with Google",
                          titleColor: Colors.black,
                          titleStyle: GoogleFonts.workSans(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          onPressed: () {
                            Get.toNamed(Routes.login);
                          },
                          btnwidth: double.infinity,
                          height: 47.h,
                          btnColor:
                              AppColors.primaryColorStatic.withOpacity(0.07),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Stack(
                      children: [
                        Positioned(
                          left: 0, // Adjust position if needed
                          right: 0, // Adjust position if needed
                          child: Container(
                            width: double.infinity,
                            height: 47.h,
                            color: Colors.transparent,
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 9.w),
                                  child: SvgPicture.asset(
                                      'assets/icons/facebook logo.svg'),
                                )),
                            // Some background or overlay
                          ),
                        ),
                        PrimaryBtn(
                          title: " Continue with Facebook",
                          titleColor: Colors.black,
                          titleStyle: GoogleFonts.workSans(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          onPressed: () {
                            Get.toNamed(Routes.login);
                          },
                          btnwidth: double.infinity,
                          height: 47.h,
                          btnColor:
                              AppColors.primaryColorStatic.withOpacity(0.07),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 41.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Center(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              color: Colors.grey[600], // Base text color
                            ),
                            children: [
                              TextSpan(
                                  text: 'By proceeding, I agree to Nebula’s ',
                                  style: GoogleFonts.workSans(
                                    fontSize: 10.sp,
                                    color: Color.fromRGBO(
                                        0, 0, 0, 61), // Link color
                                    fontWeight: FontWeight.w400,
                                  )),
                              TextSpan(
                                text: 'Terms & Conditions',
                                style: GoogleFonts.workSans(
                                  fontSize: 10.sp,
                                  color: AppColors.buttonColor, // Link color
                                  fontWeight: FontWeight.w400,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // Handle Terms & Conditions tap
                                    print('Terms & Conditions clicked');
                                  },
                              ),
                              TextSpan(
                                text: ', ',
                              ),
                              TextSpan(
                                text: 'Community Guidelines',
                                style: GoogleFonts.workSans(
                                  fontSize: 10.sp,
                                  color: AppColors.buttonColor, // Link color
                                  fontWeight: FontWeight.w400,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // Handle Community Guidelines tap
                                    print('Community Guidelines clicked');
                                  },
                              ),
                              TextSpan(
                                text: ' & ',
                                style: GoogleFonts.workSans(
                                  fontSize: 10.sp,
                                  color:
                                      Color.fromRGBO(0, 0, 0, 61), // Link color
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: 'Privacy Policy',
                                style: GoogleFonts.workSans(
                                  fontSize: 10.sp,
                                  color: AppColors.buttonColor, // Link color
                                  fontWeight: FontWeight.w400,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // Handle Privacy Policy tap
                                    print('Privacy Policy clicked');
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
