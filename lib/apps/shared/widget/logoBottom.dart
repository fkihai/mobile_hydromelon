import 'package:flutter/material.dart';
import 'package:mobile_hydromelon/apps/gen/assets.gen.dart';

import '../../constant/size_config.dart';

class LogoBottom extends StatelessWidget {
  const LogoBottom({super.key});

  @override
  Widget build(BuildContext context) {
    final SizeConfig sizeConfig = SizeConfig(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          Assets.img.logo.path,
          width: sizeConfig.getProportionateScreenWidth(30),
        ),
        const Text(
          ' Hydro Melon',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
