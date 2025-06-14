import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class BarIndicator extends StatelessWidget {
  final double percent;
  final double value;
  final String satuan;
  Color? barColor;

  BarIndicator({
    super.key,
    required this.value,
    required this.percent,
    required this.satuan,
    this.barColor,
  });

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 50.r,
      startAngle: 180,
      animation: true,
      lineWidth: 10,
      percent: percent / 100 > 1 ? 1.0 : percent / 100,
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: barColor,
      backgroundColor: const Color(0xffE6E6E6),
      center: Text(
        '$value ',
        style: TextStyle(
          color: Colors.black,
          fontSize: 25.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
