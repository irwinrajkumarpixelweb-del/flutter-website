import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/sns_links.dart';
import 'package:my_portfolio/widgets/main_desktop.dart';
import 'package:my_portfolio/widgets/main_mobile.dart';
import 'package:my_portfolio/widgets/projects_section.dart';
import 'package:my_portfolio/widgets/skills_desktop.dart';
import 'package:my_portfolio/widgets/skills_mobile.dart';
import 'package:my_portfolio/widgets/home_video_section.dart';
import 'dart:js' as js;
import '../constants/size.dart';

import '../widgets/drawer_mobile.dart';
import '../widgets/footer.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        // backgroundColor: const Color(0XFF070710),
        // CustomColor.scaffoldBg,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : DrawerMobile(onNavItemTap: (int navIndex) {
                scaffoldKey.currentState?.closeEndDrawer();
                scrollToSection(navIndex);
              }
              ),
        body: Container(
          width: screenWidth,
          padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
          decoration: const BoxDecoration(
              image: DecorationImage(image:ExactAssetImage('assets/splash_screen.png'),
                fit: BoxFit.cover,
              )
            // border: Border.all(color: Colors.greenAccent)
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(key: navbarKeys.first),
                // MAIN
                if (constraints.maxWidth >= kMinDesktopWidth)
                  HeaderDesktop(onNavMenuTap: (int navIndex) {
                    scrollToSection(navIndex);
                  }
                  )
                else
                  HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
                if (constraints.maxWidth >= kMinDesktopWidth)
                  const MainDesktop()
                else
                  const MainMobile(),

                const SizedBox(height: 20),


                // Intro video section
                const HomeVideoSection(),

                // SKILLS
                Container(
                  key: navbarKeys[1],
                  width: screenWidth,
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                  decoration: const BoxDecoration(
                    image: DecorationImage(image:ExactAssetImage('assets/bluw.png'),
                      fit: BoxFit.cover,
                    )
                    // border: Border.all(color: Colors.greenAccent)
                  ),
                  // color: const Color(0XFF070710),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // title
                      const Text(
                        " ",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                        ),
                      ),
                      const SizedBox(height: 50),

                      // platforms and skills
                      if (constraints.maxWidth >= kMedDesktopWidth)
                        const SkillsDesktop()
                      else
                        const SkillsMobile(),
                    ],
                  ),
                ),
                const SizedBox(height: 30),

                // PROJECTS
                ProjectsSection(
                  key: navbarKeys[2],
                ),

                const SizedBox(height: 30),

                // CONTACT
                // ContactSection(
                //   key: navbarKeys[3],
                // ),
                const SizedBox(height: 30),

                // FOOTER
                const Footer(),
              ],
            ),
          ),
        ),
      );
    });
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      // open a blog page
      js.context.callMethod('open', [SnsLinks.blog]);
      return;
    }

    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
