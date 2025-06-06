import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../constant/size_config.dart';

class BarIndicator extends StatelessWidget {
  final double percent;
  final int value;
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
    final SizeConfig sizeConfig = SizeConfig(context);
    return CircularPercentIndicator(
      radius: sizeConfig.getProportionateScreenWidth(75),
      startAngle: 270,
      animation: true,
      lineWidth: 20,
      percent: percent / 100 > 1 ? 1.0 : percent / 100,
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: barColor,
      backgroundColor: const Color(0xffE6E6E6),
      center: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$value ',
            style: const TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 1.0),
            child: Text(
              satuan,
              style: const TextStyle(
                  color: Color(0xff7D7D7D),
                  fontSize: 10,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
