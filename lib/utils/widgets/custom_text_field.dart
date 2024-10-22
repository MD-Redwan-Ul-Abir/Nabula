import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nabula/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final Color? hintColor;
  final dynamic suffixSvg;
  final EdgeInsetsGeometry? prefixPadding;
  final dynamic prefixSvg;
  final List<DropdownMenuItem<String>>? dropDownItems;
  final Color? dropdownIconColor;
  const CustomTextField({
    super.key,
    required this.hintText,
    this.suffixSvg,
    this.prefixSvg,
    this.hintColor,
    this.dropDownItems,
    this.controller,
    this.prefixPadding,
    this.dropdownIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return dropDownItems != null
        ? DropdownButtonFormField2<String>(
            items: dropDownItems,
            onChanged: (value) {},
            // style: TextStyle(
            //   fontSize: 16.sp,
            //   fontFamily: AssetsClass.grotesk,
            //   fontWeight: FontWeight.w400,
            //   color: ColorsManager.whiteColor,
            // ),
            hint: Text(
              hintText,
              // style: TextStyle(
              //   fontSize: 16.sp,
              //   color: hintColor ?? AppColors.white.withOpacity(0.5),
              //   fontFamily: AssetsClass.grotesk,
              //   fontWeight: FontWeight.w400,
              // ),
            ),
            decoration: InputDecoration(
              constraints: BoxConstraints(
                maxHeight: 40.h,
              ),
              contentPadding: EdgeInsets.only(bottom: 16.sp, left: -15.w),
              isDense: true,
            ),
            iconStyleData: IconStyleData(
              icon: Icon(Icons.keyboard_arrow_down),
              iconEnabledColor: dropdownIconColor ?? AppColors.white,
            ),
            dropdownStyleData: const DropdownStyleData(
                padding: EdgeInsets.only(left: 0),
                decoration: BoxDecoration(
                    // color: ColorsManager.dropDownbgColor,
                    )),
          )
        : TextFormField(
            controller: controller,
            // style: TextStyle(
            //     fontSize: 16.sp,
            //     fontFamily: AssetsClass.grotesk,
            //     fontWeight: FontWeight.w400,
            //     color: ColorsManager.whiteColor),
            decoration: InputDecoration(
              constraints: BoxConstraints(
                maxHeight: 40.h,
              ),
              // contentPadding: EdgeInsets.only(bottom: 16.sp),
              hintText: hintText,
              // hintStyle: TextStyle(
              //   fontSize: 16.sp,
              //   color: hintColor ?? ColorsManager.whiteColor.withOpacity(0.5),
              //   fontFamily: AssetsClass.grotesk,
              //   fontWeight: FontWeight.w400,
              // ),
              prefixIcon: prefixSvg is String
                  ? Padding(
                      padding:
                          EdgeInsets.all(10.sp), // Adjust padding as needed
                      child: SvgPicture.asset(
                        prefixSvg,
                      ),
                    )
                  : prefixPadding != null
                      ? Padding(
                          padding: prefixPadding!,
                          child: prefixSvg,
                        )
                      : prefixSvg,
              suffixIcon: suffixSvg is String
                  ? Padding(
                      padding:
                          EdgeInsets.all(10.sp), // Adjust padding as needed
                      child: SvgPicture.asset(
                        suffixSvg,
                      ),
                    )
                  : suffixSvg,
            ),
          );
  }
}
