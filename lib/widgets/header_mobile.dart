import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../styles/style.dart';
import 'site_logo.dart';
import 'animated_section.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({
    super.key,
    this.onLogoTap,
    this.onMenuTap,
  });
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;
  @override
  Widget build(BuildContext context) {
    return AnimatedSection(
      child: Container(
        height: 50.0,
        margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
        decoration: kHederDecoration,
        child: Row(
          children: [
            SiteLogo(
              onTap: onLogoTap,
            ),
            const Spacer(),
            // Small Login Button for Mobile
            TextButton(
              onPressed: () {},
              child: const Text(
                "Login",
                style: TextStyle(
                  color: CustomColor.soccerGreen,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            IconButton(
              onPressed: onMenuTap,
              icon: const Icon(Icons.menu, color: Colors.white),
            ),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
