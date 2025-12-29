import 'package:flutter/material.dart';
import 'animated_section.dart';

import '../constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSection(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        width: double.maxFinite,
        alignment: Alignment.center,
        child: const Text("MASL Fantasy iFutbol",
          // "Made by Irwin Raj Kumar with Flutter 3.10",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: CustomColor.whiteSecondary,
          ),
        ),
      ),
    );
  }
}
