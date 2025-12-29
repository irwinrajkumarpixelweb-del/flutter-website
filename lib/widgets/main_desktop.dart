import 'animated_section.dart';
import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;

    return AnimatedSection(
      child: Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      height: screenHeight / 1.1,
      constraints: const BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // intro message
              const SizedBox(
                width: 450,
                child: Text(
                  "The Official Major Arena Soccer League Fantasy Futbol App",
                  // "Hi,\nI'm Irwin Raj Kumar\nA Flutter Developer",
                  style: TextStyle(
                    fontSize: 30,
                    height: 1.5,
                    fontWeight: FontWeight.bold,

                    color: CustomColor.whitePrimary,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 20),
              // contact btn
              SizedBox(
                width: 250.0,
                child:
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[500], // 🔹 Change to your desired color
                    foregroundColor: Colors.black, // 🔹 Text & icon color
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    "Get Started For Free Now",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              )
            ],
          ),
          // avatar img
          Image.asset(
            "assets/my_flutter_avatar.png",
            // height: screenWidth / 1,
            // width: screenWidth / 3,
          ),
        ],
      ),
          ),
    );
  }
}
