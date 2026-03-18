import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/site_logo.dart';
import 'animated_section.dart';

import '../constants/colors.dart';
import '../styles/style.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({
    super.key,
    required this.onNavMenuTap,
  });
  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return AnimatedSection(
      child: Container(
        height: 60.0,
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        width: double.maxFinite,
        decoration: kHederDecoration,
        child: Row(
          children: [
            SiteLogo(
              onTap: () {},
            ),
            const Spacer(),
            // Login Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: CustomColor.soccerGreen,
                foregroundColor: Colors.black,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              child: const Row(
                children: [
                  Text("home"),
                  SizedBox(width: 5),
                  Icon(Icons.chevron_right, size: 18),
                ],
              ),
            ),
            const SizedBox(width: 15),
            // Sign Up Button
            ElevatedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.black.withOpacity(0.5),
                foregroundColor: Colors.white,
                side: const BorderSide(color: Colors.white, width: 1.5),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              child: const Row(
                children: [
                  Text("About"),
                  SizedBox(width: 5),
                  Icon(Icons.chevron_right, size: 18),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
