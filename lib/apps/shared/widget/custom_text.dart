import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  CustomText({
    super.key,
    required this.title,
    this.fontSize = 12,
    this.fontWeight = FontWeight.w400,
    this.color = Colors.black,
    this.textAlign = TextAlign.start,
  });

  String title;
  double fontSize;
  FontWeight fontWeight;
  Color color;
  TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        color: color,
      ),
      textAlign: textAlign,
    );
  }
}
