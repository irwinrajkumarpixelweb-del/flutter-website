import 'animated_section.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../constants/colors.dart';
import '../utils/project_utils.dart';
import 'project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return AnimatedSection(
      child: Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          // Work projects title
          const Text(
            "Draft League",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 50),
          // Work projects cards
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 40,
              runSpacing: 40,
              children: [
                Container(
                    clipBehavior: Clip.antiAlias,
                    height: 230,
                    width: 260,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.greenAccent),
                      color: const Color(0XFF070710),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 16.0,
                      ),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            'create-a-league.svg',
                            // width: 26.0,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Create a League",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: CustomColor.whitePrimary,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "You 're the league manager here. Set up a private league to play with your family and friends!",
                            style: TextStyle(
                              fontSize: 14,
                              // fontWeight: FontWeight.bold,
                              color: CustomColor.whitePrimary,
                            ),
                          )
                        ],
                      ),
                    )

                    // Text(platformItems[i]["title"]),

                    // for (int i = 0; i < workProjectUtils.length; i++)
                    //   ProjectCardWidget(
                    //     project: workProjectUtils[i],
                    //   ),
                    ),
                Container(
                    clipBehavior: Clip.antiAlias,
                    height: 230,
                    width: 260,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.greenAccent),
                      color: const Color(0XFF070710),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 16.0,
                      ),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            'join-a-league.svg',
                            // width: 26.0,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Join a League",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: CustomColor.whitePrimary,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Coming Soon!",
                            style: TextStyle(
                              fontSize: 14,
                              // fontWeight: FontWeight.bold,
                              color: CustomColor.whitePrimary,
                            ),
                          ),
                          const SizedBox(height: 2),
                          const Text(
                            "People for you to play with!",
                            style: TextStyle(
                              fontSize: 14,
                              // fontWeight: FontWeight.bold,
                              color: CustomColor.whitePrimary,
                            ),
                          )
                        ],
                      ),
                    )

                    // Text(platformItems[i]["title"]),

                    // for (int i = 0; i < workProjectUtils.length; i++)
                    //   ProjectCardWidget(
                    //     project: workProjectUtils[i],
                    //   ),
                    )
              ],
            ),
          ),
          // Hobby projects title

          const SizedBox(height: 80),
          const Column(
            children: [
              Text(
                "How to Play Fanstasy Futbol",
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Learn how to join or create a league as well select players, arrange transfers and win bragging rights!",
                style: TextStyle(
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
          const SizedBox(height: 50),
          const Column(
            children: [
              Text(
                "How to Play Fanstasy Futbol",
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Learn how to join or create a league as well select players, arrange transfers and win bragging rights!",
                style: TextStyle(
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              SizedBox(height: 50),
            ],
          ),

          // Hobby projects cards
          // ConstrainedBox(
          //   constraints: const BoxConstraints(maxWidth: 900),
          //   child: Wrap(
          //     spacing: 25,
          //     runSpacing: 25,
          //     children: [
          //       for (int i = 0; i < hobbyProjectUtils.length; i++)
          //         ProjectCardWidget(
          //           project: hobbyProjectUtils[i],
          //         ),
          //     ],
          //   ),
          // ),
        ],
      ),
          ),
    );
  }
}
