import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LeaderboardPage extends StatefulWidget {
  const LeaderboardPage({super.key});

  @override
  _LeaderboardPageState createState() => _LeaderboardPageState();
}

class _LeaderboardPageState extends State<LeaderboardPage> {
  final List<Map<String, dynamic>> leaderboard = [
    {"name": "Aswath", "points": 2569, "rank": 1, "avatar": Icons.person},
    {"name": "Alena Donin", "points": 1469, "rank": 2, "avatar": Icons.person},
    {"name": "Craig Gouse", "points": 1053, "rank": 3, "avatar": Icons.person},
    {"name": "Madelyn Dias", "points": 590, "rank": 4, "avatar": Icons.person},
    {"name": "Zain Vaccaro", "points": 448, "rank": 5, "avatar": Icons.person},
    {"name": "Skylar Geidt", "points": 448, "rank": 6, "avatar": Icons.person},
    {"name": "Justin Bator", "points": 400, "rank": 7, "avatar": Icons.person},
    {"name": "Justin Bator", "points": 400, "rank": 7, "avatar": Icons.person},
    {"name": "Justin Bator", "points": 400, "rank": 7, "avatar": Icons.person},
    {"name": "Justin Bator", "points": 400, "rank": 7, "avatar": Icons.person},
    {"name": "Justin Bator", "points": 400, "rank": 7, "avatar": Icons.person},
    {"name": "Justin Bator", "points": 400, "rank": 7, "avatar": Icons.person},
    {"name": "Justin Bator", "points": 400, "rank": 7, "avatar": Icons.person},
  ];

  bool showTopThreeInList = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/images/WhatsApp Image 2024-09-11 at 14.17.16_5ce8e650.jpg",
              ),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Leaderboard",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    image: DecorationImage(
                      alignment: Alignment.bottomCenter,
                      fit: BoxFit.fitWidth,
                      opacity: 0.3,
                      image: AssetImage(
                        "assets/images/background_leaves.png",
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: MediaQuery.of(context).size.height *
                            0.1, // 10% from the top
                        right: 0,
                        left: 0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                          ),
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 0.5,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit
                                    .cover, // Maintain aspect ratio of podium
                                image: AssetImage(
                                  "assets/images/podium.png",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // 2nd place icon and name (adjust height and left position based on screen size)
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.1,
                        left: MediaQuery.of(context).size.width * 0.08,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              child: Icon(leaderboard[1]['avatar']),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              leaderboard[1]['name'],
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // 1st place icon and name (highest on podium, centered horizontally)
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.03,
                        left: MediaQuery.of(context).size.width / 2 -
                            MediaQuery.of(context).size.width * 0.075,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              child: Icon(leaderboard[0]['avatar']),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              leaderboard[0]['name'],
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // 3rd place icon and name (adjust right position and height)
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.14,
                        right: MediaQuery.of(context).size.width * 0.07,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              child: Icon(leaderboard[2]['avatar']),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              leaderboard[2]['name'],
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      DraggableScrollableSheet(
                        initialChildSize: 0.5,
                        minChildSize: 0.5,
                        maxChildSize: 0.98,
                        snap: true,
                        builder: (BuildContext context, controller) {
                          return NotificationListener<
                              DraggableScrollableNotification>(
                            onNotification: (notification) {
                              if (notification.extent >= 0.8 &&
                                  !showTopThreeInList) {
                                setState(() {
                                  showTopThreeInList = true;
                                });
                              } else if (notification.extent < 0.8 &&
                                  showTopThreeInList) {
                                setState(() {
                                  showTopThreeInList = false;
                                });
                              }
                              return true;
                            },
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 7,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                    color: HexColor("#e0e6ff"),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 10,
                                    ),
                                    child: ListView.builder(
                                      controller: controller,
                                      shrinkWrap: true,
                                      itemCount: leaderboard.length,
                                      itemBuilder: (context, index) {
                                        // Skip top 3 if showTopThreeInList is false
                                        if (!showTopThreeInList && index < 3) {
                                          return const SizedBox.shrink();
                                        }
                                        return Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                            horizontal: 15,
                                          ),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                vertical: 10,
                                                horizontal: 10,
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                        color:
                                                            Colors.grey[400]!,
                                                      ),
                                                    ),
                                                    padding:
                                                        const EdgeInsets.all(8),
                                                    child: Text(
                                                      (index + 1).toString(),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: ListTile(
                                                      leading: Container(
                                                        width: 40,
                                                        height: 40,
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: const Icon(
                                                            Icons.person),
                                                      ),
                                                      title: Text(
                                                        leaderboard[index]
                                                            ['name'],
                                                      ),
                                                      subtitle: Text(
                                                        '${leaderboard[index]['points']} points',
                                                        style: TextStyle(
                                                          color:
                                                              Colors.grey[400]!,
                                                        ),
                                                      ),
                                                      trailing:
                                                          _buildLeadingImage(
                                                              index),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget podiumItem(
      {required int rank,
      required double height,
      required Color color,
      required String name,
      required IconData avatar}) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          child: Icon(avatar),
        ),
        Text(name),
      ],
    );
  }

  Widget _buildLeadingImage(int index) {
    if (index == 0) {
      return Image.asset('assets/images/gold.jpg');
    } else if (index == 1) {
      return Image.asset('assets/images/bronze.jpg');
    } else if (index == 2) {
      return Image.asset('assets/images/Silver medal.jpg');
    } else {
      return const SizedBox();
    }
  }
}
