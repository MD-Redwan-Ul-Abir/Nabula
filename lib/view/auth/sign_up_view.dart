import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nabula/utils/app_colors.dart';

import '../../utils/widgets/custom_app_bar.dart';
import '../../utils/widgets/custom_text_field.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Create your profile',
        backIconColor: AppColors.primaryColorStatic,
        onBackPressed: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 22.w, right: 22.w, top: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textLebel(
                label: 'First Name',
              ),
              SizedBox(
                height: 13.h,
              ),
              CustomTextField(
                hintText: ' First Name',
                filledstatus: true,
                filledColor: AppColors.primaryColorStatic.withOpacity(0.07),
              ),
              SizedBox(
                height: 10.h,
              ),
              textLebel(
                label: 'Last Name',
              ),
              SizedBox(
                height: 13.h,
              ),
              CustomTextField(
                hintText: ' Last Name',
                filledstatus: true,
                filledColor: AppColors.primaryColorStatic.withOpacity(0.07),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class textLebel extends StatelessWidget {
  final String label;
  const textLebel({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: GoogleFonts.workSans(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.buttonColor),
    );
  }
}
