import 'animated_section.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../constants/colors.dart';
// import '../utils/project_utils.dart'; // Removed unused import
// import 'project_card.dart'; // Removed unused import

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
                  "How to Play Fantasy Futbol",
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Learn how to join or create a league as well as select players, arrange transfers and win bragging rights!",
                  style: TextStyle(
                    fontSize: 18,
                    // fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary,
                  ),
                ),
                SizedBox(height: 50),
                HowToPlayCards(),
              ],
            ),
            const SizedBox(height: 100),
            // Top Players Section
            const TopPlayersSection(),
            const SizedBox(height: 100),
            // FAQ Section
            const FAQSection(),
          ],
        ),
      ),
    );
  }
}

class HowToPlayCards extends StatelessWidget {
  const HowToPlayCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      alignment: WrapAlignment.center,
      children: const [
        HowToPlayCard(
          image: 'assets/darkwelcomeone.png',
          title: "Create An Account",
          description:
              "Click the Sign-Up button to create a MASL iFutbol account. Once created, a verification email will be sent to your email address (if you do NOT see this email, please check your SPAM folder). Once verified, you can personalize your account and create or join fantasy iFutbol leagues.",
        ),
        HowToPlayCard(
          image: 'assets/darkwelcometwo.png',
          title: "Create A League",
          description:
              "Creating a league is fun and easy to do. First, log in and then click the Create a League button. As the creator, your role is 'Commissioner', and you get to name the league as well as select how many players you want to invite. After creating the league, set the start date and then click the Invite button and enter the emails for each of the players - that's it!",
        ),
        HowToPlayCard(
          image: 'assets/welcome_bg.png',
          title: "Join A League",
          description:
              "To join a league, you need to get an invite email from the league's Commissioner - the person who created the league. This will go to your MASL iFutbol email. (Check your SPAM folder if you do not see one). Clicking the invite email takes you to the league page on MASL iFutbol. Once you join, you are now registered and ready to play on the league start date.",
        ),
        HowToPlayCard(
          image: 'assets/splash_screen.png',
          title: "Draft Your Team",
          description:
              "At the league start date and time, click the Waiting room button. Use the Queue button to create a short list of the players you want on your team. When it's your turn, click Draft to add a player to your team. You can select a maximum of 12 players - but you MUST stay within the \$300k salary cap. Once the draft is over, you then edit the team and select the top six players for each week's game.",
        ),
      ],
    );
  }
}

class HowToPlayCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const HowToPlayCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 480,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xff070710),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: CustomColor.soccerGreen.withOpacity(0.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white70,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}

class TopPlayersSection extends StatelessWidget {
  const TopPlayersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 80),
        const Text(
          "Top Players",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: CustomColor.whitePrimary,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "Current season leaderboards for various categories",
          style: TextStyle(
            color: CustomColor.whiteSecondary,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 50),
        Wrap(
          spacing: 20,
          runSpacing: 20,
          alignment: WrapAlignment.center,
          children: const [
            TopPlayersCard(
              title: "Goalkeeper",
              bgAsset: 'assets/stats-plyr-bg-1.png',
              topThree: [
                Player(name: "Brian Orozco", score: "47 pts", rank: 1),
                Player(name: "Brandon Gomez", score: "42 pts", rank: 2),
                Player(name: "Gerardo Perez", score: "41 pts", rank: 3),
              ],
              otherPlayers: [
                Player(name: "Philip Ejimadu", score: "34 pts", rank: 4),
                Player(name: "Julian Rodriguez", score: "32 pts", rank: 5),
                Player(name: "Boris Pardo", score: "21 pts", rank: 6),
                Player(name: "Paulo Nascimento", score: "30 pts", rank: 7),
                Player(name: "William Banahene", score: "27 pts", rank: 8),
                Player(name: "Claysson De Lima", score: "27 pts", rank: 9),
                Player(name: "Danny Waltman", score: "27 pts", rank: 10),
              ],
            ),
            TopPlayersCard(
              title: "Hat Tricks",
              bgAsset: 'assets/stats-plyr-bg-2.png',
              topThree: [
                Player(name: "Alan Marquez", score: "10 pts", rank: 1),
                Player(name: "Alex Sanchez", score: "5 pts", rank: 2),
                Player(name: "Zach Reget", score: "5 pts", rank: 3),
              ],
              otherPlayers: [
                Player(name: "Lesia Thetsane", score: "4 pts", rank: 4),
                Player(name: "Nick Perera", score: "4 pts", rank: 5),
                Player(name: "Jonatas Melo", score: "4 pts", rank: 6),
                Player(name: "Kovaughn Frater", score: "4 pts", rank: 7),
                Player(name: "Daniel Torrealba", score: "4 pts", rank: 8),
                Player(name: "John Gatos", score: "2 pts", rank: 9),
                Player(name: "Juan Pereira", score: "2 pts", rank: 10),
              ],
            ),
            TopPlayersCard(
              title: "First Stars",
              bgAsset: 'assets/stats-plyr-bg-3.png',
              topThree: [
                Player(name: "Sergio Rival", score: "4 pts", rank: 1),
                Player(name: "Alex Sanchez", score: "3 pts", rank: 2),
                Player(name: "Alan Marquez", score: "3 pts", rank: 3),
              ],
              otherPlayers: [
                Player(name: "Nick Perera", score: "3 pts", rank: 4),
                Player(name: "Tyler John", score: "3 pts", rank: 5),
                Player(name: "Zach Reget", score: "2 pts", rank: 6),
                Player(name: "Daniel Torrealba", score: "2 pts", rank: 7),
                Player(name: "Chad Poarch", score: "2 pts", rank: 8),
                Player(name: "Randy Martinez", score: "2 pts", rank: 9),
                Player(name: "Mehrshad Ahmadi", score: "2 pts", rank: 10),
              ],
            ),
            TopPlayersCard(
              title: "Second Stars",
              bgAsset: 'assets/stats-plyr-bg-1.png',
              topThree: [
                Player(name: "Alan Marquez", score: "2 pts", rank: 1),
                Player(name: "Julian Rodriguez", score: "1.5 pts", rank: 2),
                Player(name: "Sergio Rival", score: "1.5 pts", rank: 3),
              ],
              otherPlayers: [
                Player(name: "Juan Pereira", score: "1.5 pts", rank: 4),
                Player(name: "Geo Alves", score: "1 pts", rank: 5),
                Player(name: "Paulo Nascimento", score: "1 pts", rank: 6),
                Player(name: "Boris Pardo", score: "1 pts", rank: 7),
                Player(name: "William Banahene", score: "1 pts", rank: 8),
                Player(name: "Claysson De Lima", score: "1 pts", rank: 9),
                Player(name: "Jeffery Hughes", score: "1 pts", rank: 10),
              ],
            ),
            TopPlayersCard(
              title: "Third Stars",
              bgAsset: 'assets/stats-plyr-bg-2.png',
              topThree: [
                Player(name: "Barbaro Sheeler", score: "0.075 pts", rank: 1),
                Player(name: "Mounir Alami", score: "0.075 pts", rank: 2),
                Player(name: "Nick Perera", score: "0.075 pts", rank: 3),
              ],
              otherPlayers: [
                Player(name: "Oumar Sylla", score: "0.075 pts", rank: 4),
                Player(name: "Paulo Nascimento", score: "0.075 pts", rank: 5),
                Player(name: "Zach Reget", score: "0.05 pts", rank: 6),
                Player(name: "Lesia Thetsane", score: "0.05 pts", rank: 7),
                Player(name: "John Gatos", score: "0.05 pts", rank: 8),
                Player(name: "Juan Pereira", score: "0.05 pts", rank: 9),
                Player(name: "Gerardo Perez", score: "0.05 pts", rank: 10),
              ],
            ),
            TopPlayersCard(
              title: "Points Per Game",
              bgAsset: 'assets/stats-plyr-bg-3.png',
              topThree: [
                Player(name: "Kelvin Oliveira", score: "7.0 pts", rank: 1),
                Player(name: "Andrew Taylor", score: "7 pts", rank: 2),
                Player(name: "Tomaz Gomez", score: "5 pts", rank: 3),
              ],
              otherPlayers: [
                Player(name: "Joao Ortiz", score: "5 pts", rank: 4),
                Player(name: "Gerardo Perez", score: "4.571 pts", rank: 5),
                Player(name: "Claysson De Lima", score: "4.417 pts", rank: 6),
                Player(name: "Nathaniel Linquist", score: "4 pts", rank: 7),
                Player(name: "Boris Pardo", score: "4 pts", rank: 8),
                Player(name: "William Banahene", score: "4 pts", rank: 9),
                Player(name: "Philip Ejimadu", score: "4 pts", rank: 10),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class TopPlayersCard extends StatelessWidget {
  final String title;
  final String bgAsset;
  final List<Player> topThree;
  final List<Player> otherPlayers;

  const TopPlayersCard({
    super.key,
    required this.title,
    required this.bgAsset,
    required this.topThree,
    required this.otherPlayers,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      decoration: BoxDecoration(
        color: const Color(0xff161616),
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(bgAsset),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10),
          // Top 3 Podium
          SizedBox(
            height: 180,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // 1st Place (Center)
                Positioned(
                  top: 0,
                  child: _PodiumPlayer(player: topThree[0]),
                ),
                // 2nd Place (Left)
                Positioned(
                  left: 30,
                  top: 50,
                  child: _PodiumPlayer(player: topThree[1]),
                ),
                // 3rd Place (Right)
                Positioned(
                  right: 30,
                  top: 60,
                  child: _PodiumPlayer(player: topThree[2]),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Ranking List 4-10
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            child: Column(
              children: otherPlayers
                  .map((p) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            Text(
                              "${p.rank}",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 10),
                            CircleAvatar(
                              radius: 12,
                              backgroundColor: CustomColor.soccerBlack,
                              child: const Icon(Icons.person, size: 14),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                p.name,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            Text(
                              p.score,
                              style: const TextStyle(
                                color: CustomColor.soccerGreen,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class _PodiumPlayer extends StatelessWidget {
  final Player player;
  const _PodiumPlayer({required this.player});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CircleAvatar(
              radius: player.rank == 1 ? 35 : 28,
              backgroundColor: CustomColor.soccerGreen,
              child: CircleAvatar(
                radius: (player.rank == 1 ? 35 : 28) - 2,
                backgroundColor: CustomColor.soccerBlack,
                child:
                    const Icon(Icons.person, color: Colors.white54, size: 30),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: CustomColor.soccerGreen,
                shape: BoxShape.circle,
              ),
              child: Text(
                "${player.rank}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          player.name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          player.score,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}

class Player {
  final String name;
  final String score;
  final int rank;
  final String? img;

  const Player({
    required this.name,
    required this.score,
    required this.rank,
    this.img,
  });
}

class FAQSection extends StatelessWidget {
  const FAQSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 800;

    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1000),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: isDesktop
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(
                      flex: 1,
                      child: FAQHeader(),
                    ),
                    const SizedBox(width: 50),
                    Expanded(
                      flex: 2,
                      child: FAQList(),
                    ),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FAQHeader(),
                    const SizedBox(height: 40),
                    FAQList(),
                  ],
                ),
        ),
      ),
    );
  }
}

class FAQHeader extends StatelessWidget {
  const FAQHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Frequently asked questions",
          style: TextStyle(
            color: CustomColor.faqCyan,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Your Questions\nAnswered",
          style: TextStyle(
            color: CustomColor.whitePrimary,
            fontSize: 48,
            fontWeight: FontWeight.w900,
            height: 1.1,
          ),
        ),
        SizedBox(height: 20),
        Text(
          "FAQs to Guide You Through MASL iFutbol",
          style: TextStyle(
            color: CustomColor.whiteSecondary,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class FAQList extends StatelessWidget {
  FAQList({super.key});

  final List<Map<String, String>> faqItems = [
    {
      "question": "What is MASL iFutbol and how does it work?",
      "answer":
          "MASL iFutbol is the official fantasy game of the Major Arena Soccer League. It allows fans to build the ultimate fantasy roster of MASL stars, compete in leagues, and win prizes while following live arena soccer action."
    },
    {
      "question": "Is MASL iFutbol available on mobile devices?",
      "answer":
          "Yes! MASL iFutbol is available as a mobile application for both iOS and Android. You can download it from the Apple App Store and Google Play Store."
    },
    {
      "question": "Is MASL iFutbol a gambling app?",
      "answer":
          "No, MASL iFutbol is a skill-based fantasy sports platform. It is designed for entertainment and competition based on player performance and statistical analysis."
    },
    {
      "question": "How do I acquire players for my fantasy team?",
      "answer":
          "You can acquire players through the initial draft process or via the transfer market where you can trade or sign free agents using your allocated budget."
    },
    {
      "question": "How does iFutbol Cash work?",
      "answer":
          "iFutbol Cash is the in-game currency used to facilitate transactions within the game, such as entry fees for certain competitions or purchasing league-specific enhancements."
    },
    {
      "question": "How do I trade for a player?",
      "answer":
          "To trade for a player, navigate to the market section, select the player you want, and propose a trade to the current owner or pay the transfer fee if they are on the market."
    },
    {
      "question":
          "Are there any limitations on how much iFutbol Cash you have?",
      "answer":
          "While there is no hard cap on accumulated iFutbol Cash, there are strategic limits on how much you can spend per gameweek to ensure fair competition among all managers."
    },
    {
      "question": "Does MASL iFutbol have Prize Picks?",
      "answer":
          "Yes, we offer various prediction-based games including 'Prize Picks' where you can test your knowledge of individual player statistics for specific match days."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: faqItems.map((faq) => FAQTile(faq: faq)).toList(),
    );
  }
}

class FAQTile extends StatefulWidget {
  final Map<String, String> faq;
  const FAQTile({super.key, required this.faq});

  @override
  State<FAQTile> createState() => _FAQTileState();
}

class _FAQTileState extends State<FAQTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.white12, width: 1),
        ),
      ),
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 8),
            title: Text(
              widget.faq['question']!,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: Icon(
              _isExpanded ? Icons.remove : Icons.add,
              color: Colors.white,
            ),
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
          ),
          if (_isExpanded)
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                widget.faq['answer']!,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
