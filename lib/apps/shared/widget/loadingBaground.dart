import 'package:flutter/material.dart';
import '../../constant/size_config.dart';

class LoadingBaground extends StatelessWidget {
  const LoadingBaground({super.key});
  @override
  Widget build(BuildContext context) {
    final SizeConfig sizeConfig = SizeConfig(context);
    return Stack(
      children: [
        Container(
          width: sizeConfig.getScreenHeight(),
          height: sizeConfig.getScreenHeight(),
          color: Colors.white.withOpacity(0.5),
        ),
        const Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.green,
          ),
        ),
      ],
    );
  }
}
