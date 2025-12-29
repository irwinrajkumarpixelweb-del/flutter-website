import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({
    super.key,
    this.onTap,
  });
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset("assets/logo.svg")
      // const Text(
      //   "IR",
      //   style: TextStyle(
      //     fontSize: 22,
      //     fontWeight: FontWeight.bold,
      //     decoration: TextDecoration.underline,
      //     color: CustomColor.yellowSecondary,
      //   ),
      // ),
    );
  }
}
