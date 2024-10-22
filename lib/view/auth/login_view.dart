import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nabula/utils/app_colors.dart';
import 'package:nabula/utils/widgets/custom_text_field.dart';

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
            left: 20.w,
            right: 20.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).padding.top,
                color: AppColors.primaryColorStatic,
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
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
                      height: 32.h,
                    ),
                    Text(
                      'Login to your account',
                      style: GoogleFonts.robotoMono(
                          color: Colors.black,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -1.3,
                          wordSpacing:
                              -3 // Use a negative value to reduce letter spacing
                          ),
                    ),
                    SizedBox(
                      height: 23.h,
                    ),
                    CustomTextField(hintText: 'Email'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
