import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onBackPressed;
  final Color backgroundColor;
  final Color titleColor;
  final Color backIconColor;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.onBackPressed,
    this.backgroundColor = Colors.transparent,
    this.titleColor = Colors.black,
    this.backIconColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: backIconColor,
          size: 32,
        ), // Custom back button icon
        onPressed: onBackPressed, // Functionality to go back
      ),
      title: Text(
        title,
        style: GoogleFonts.plusJakartaSans(
          fontWeight: FontWeight.w500,
          fontSize: 20.sp,
          color: titleColor,
        ),
      ),
      backgroundColor: backgroundColor,
      elevation: 0, // To make the AppBar transparent
      titleSpacing: 0, // Reduce the gap between icon and title
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight); // AppBar height
}
