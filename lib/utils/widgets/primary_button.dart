import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nabula/utils/app_colors.dart';

class PrimaryBtn extends StatelessWidget {
  final String title;
  final Color? titleColor;
  final Color? btnColor;
  final VoidCallback onPressed;
  final double? hpadd;
  final double? hpadd1;
  final IconData? icon;
  final dynamic iconImage;
  final Color? iconColor;
  final double? height;
  final double? width;
  final double? btnwidth;
  final double? radius;
  final bool isLeftAligned;
  final bool isRightAligned;
  final Color? borderColor;
  final TextStyle? titleStyle;
  final double? iconSize;
  final Gradient? gradiant;

  const PrimaryBtn({
    super.key,
    required this.title,
    required this.onPressed,
    this.btnColor,
    this.hpadd,
    this.hpadd1,
    this.icon,
    this.titleColor,
    this.iconColor,
    this.height,
    this.width,
    this.btnwidth,
    this.radius,
    this.iconImage,
    this.borderColor,
    this.isLeftAligned = true,
    this.isRightAligned = true,
    this.titleStyle,
    this.iconSize,
    this.gradiant,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 8.r),
        gradient: gradiant,
        boxShadow: gradiant == null
            ? null
            : [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 20,
                  offset: const Offset(0, 20),
                ),
              ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: hpadd ?? 0),
        child: SizedBox(
          height: height ?? 46.h,
          width: btnwidth ?? 324.w,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              surfaceTintColor: Colors.transparent,
              shadowColor: Colors.transparent,
              backgroundColor: gradiant == null
                  ? btnColor ?? AppColors.buttonColor
                  : Colors.transparent,
              padding: EdgeInsets.symmetric(horizontal: hpadd1 ?? 20.w),
              maximumSize: Size(width ?? 1.sw, 56.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius ?? 23.r),
              ),
              side: borderColor == null
                  ? BorderSide.none
                  : BorderSide(color: borderColor!),
            ),
            child: Row(
              // mainAxisAlignment: _getMainAxisAlignment(),
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null)
                  Icon(
                    icon,
                    color: iconColor ?? AppColors.white,
                    size: iconSize,
                  ),
                if (icon != null) SizedBox(width: 5.w),
                Text(
                  title,
                  style: titleStyle ??
                      TextStyle(
                        color: titleColor ?? AppColors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                // if (iconImage != null) SizedBox(width: 10.w),
                // if (iconImage != null)
                //   Image.asset(iconImage!, height: 16.h, width: 16.w),
                if (iconImage != null) ...[
                  SizedBox(width: 10.w),
                  iconImage is IconData
                      ? Icon(
                          iconImage!,
                          color: iconColor ?? AppColors.white,
                          size: iconSize,
                        )
                      : Image.asset(iconImage!, height: 16.h, width: 16.w),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  MainAxisAlignment _getMainAxisAlignment() {
    if (isLeftAligned && isRightAligned) {
      return MainAxisAlignment.spaceBetween;
    } else if (isLeftAligned) {
      return MainAxisAlignment.start;
    } else if (isRightAligned) {
      return MainAxisAlignment.end;
    } else {
      return MainAxisAlignment.center;
    }
  }
}
