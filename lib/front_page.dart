import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rewardspage/placement/actionplan.dart';
import 'package:rewardspage/profile/profile.dart';
import 'package:rewardspage/rewards%20pages/rewards_main_page.dart';

class BackgroundImage extends StatefulWidget {
  const BackgroundImage({super.key});

  @override
  State<BackgroundImage> createState() => _BackgroundImageState();
}

class _BackgroundImageState extends State<BackgroundImage> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    // Calculate the radius as a fraction of the screen width
    double avatarRadius = screenWidth * 0.08; // 15% of screen width
    double textSize = avatarRadius * 0.5;

    double fontSize =
        screenWidth * 0.03; // 5% of screen width // 50% of the avatar radius

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  "assets/images/WhatsApp Image 2024-09-11 at 14.17.16_5ce8e650.jpg",
                ),
              ),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    // Expanded(
                    //   child: Padding(
                    //     padding: const EdgeInsets.symmetric(
                    //       vertical: 15,
                    //       horizontal: 10,
                    //     ),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         FittedBox(
                    //           child: Padding(
                    //             padding: const EdgeInsets.only(
                    //               left: 3.0,
                    //               right: 3.0,
                    //             ),
                    //             child: Column(
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //               children: [
                    //                 ClipRRect(
                    //                   borderRadius: BorderRadius.circular(
                    //                     100,
                    //                   ),
                    //                   child: Container(
                    //                     color: Colors.white,
                    //                     child: Padding(
                    //                       padding: const EdgeInsets.all(
                    //                         4,
                    //                       ),
                    //                       child: Row(
                    //                         mainAxisAlignment:
                    //                             MainAxisAlignment.spaceBetween,
                    //                         children: [
                    //                           const CircleAvatar(
                    //                             radius: 30,
                    //                             backgroundImage: AssetImage(
                    //                               'assets/images/student.jpg',
                    //                             ),
                    //                           ),
                    //                           const SizedBox(width: 10),
                    //                           Column(
                    //                             crossAxisAlignment:
                    //                                 CrossAxisAlignment.start,
                    //                             mainAxisAlignment:
                    //                                 MainAxisAlignment.center,
                    //                             children: [
                    //                               const Center(
                    //                                 child: Text(
                    //                                   'Rating',
                    //                                   style: TextStyle(
                    //                                     fontSize: 20,
                    //                                     fontWeight:
                    //                                         FontWeight.normal,
                    //                                     color: Colors.black,
                    //                                   ),
                    //                                 ),
                    //                               ),
                    //                               const SizedBox(height: 5.0),
                    //                               Row(
                    //                                 mainAxisAlignment:
                    //                                     MainAxisAlignment
                    //                                         .center,
                    //                                 children: List.generate(5,
                    //                                     (index) {
                    //                                   return const Icon(
                    //                                     Icons.star,
                    //                                     color: Colors.amber,
                    //                                     size: 20.0,
                    //                                   );
                    //                                 }),
                    //                               ),
                    //                             ],
                    //                           ),
                    //                           const SizedBox(width: 10),
                    //                         ],
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ),
                    //                 const SizedBox(height: 10),
                    //                 const Padding(
                    //                   padding: EdgeInsets.only(left: 10.0),
                    //                   child: Text(
                    //                     'Hi Aswath',
                    //                     style: TextStyle(
                    //                       fontFamily: 'ABeeZee',
                    //                       fontSize: 25,
                    //                       fontWeight: FontWeight.bold,
                    //                       color: Colors.white,
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //         ),
                    //         FittedBox(
                    //           child: Column(
                    //             children: [
                    //               ClipRRect(
                    //                 borderRadius: BorderRadius.circular(
                    //                   100,
                    //                 ),
                    //                 child: Container(
                    //                   color: Colors.white,
                    //                   child: Padding(
                    //                     padding: const EdgeInsets.all(
                    //                       4,
                    //                     ),
                    //                     child: Row(
                    //                       mainAxisAlignment:
                    //                           MainAxisAlignment.spaceBetween,
                    //                       children: [
                    //                         const SizedBox(width: 10),
                    //                         Column(
                    //                           crossAxisAlignment:
                    //                               CrossAxisAlignment.end,
                    //                           mainAxisAlignment:
                    //                               MainAxisAlignment.center,
                    //                           children: [
                    //                             const Text(
                    //                               'Rating',
                    //                               style: TextStyle(
                    //                                 fontFamily: 'ABeeZee',
                    //                                 fontSize: 20,
                    //                                 fontWeight:
                    //                                     FontWeight.normal,
                    //                                 color: Colors.black,
                    //                               ),
                    //                             ),
                    //                             const SizedBox(height: 5.0),
                    //                             Row(
                    //                               mainAxisAlignment:
                    //                                   MainAxisAlignment.center,
                    //                               children:
                    //                                   List.generate(5, (index) {
                    //                                 return const Icon(
                    //                                   Icons.star,
                    //                                   color: Colors.amber,
                    //                                   size: 20.0,
                    //                                 );
                    //                               }),
                    //                             ),
                    //                           ],
                    //                         ),
                    //                         const SizedBox(
                    //                           width: 10,
                    //                         ),
                    //                         const CircleAvatar(
                    //                           radius: 30,
                    //                           backgroundImage: AssetImage(
                    //                               'assets/images/mentor.jpg'),
                    //                         ),
                    //                         // const SizedBox(width: 10),
                    //                       ],
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ),
                    //               const SizedBox(height: 10),
                    //               const Padding(
                    //                 padding: EdgeInsets.only(left: 30.0),
                    //                 child: Text(
                    //                   'Ramasami',
                    //                   style: TextStyle(
                    //                     fontFamily: 'ABeeZee',
                    //                     fontSize: 25,
                    //                     fontWeight: FontWeight.bold,
                    //                     color: Colors.white,
                    //                   ),
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 10),
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // First Column
                                Expanded(
                                  flex: constraints.maxWidth > 600
                                      ? 1
                                      : 2, // Adjust flex based on screen width
                                  child: FittedBox(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 3.0, right: 3.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            child: Container(
                                              color: Colors.white,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(4),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  MyProfileScreen()),
                                                        );
                                                        // Add your action here
                                                        print("Avatar tapped");
                                                      },
                                                      child: CircleAvatar(
                                                        radius: 30,
                                                        backgroundImage: AssetImage(
                                                            'assets/images/student.jpg'),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 10),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Center(
                                                          child: Text(
                                                            'Rating',
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            height: 5.0),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children:
                                                              List.generate(5,
                                                                  (index) {
                                                            return const Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.amber,
                                                              size: 20.0,
                                                            );
                                                          }),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(width: 10),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          const Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.0),
                                            child: Text(
                                              'Hi Aswath',
                                              style: TextStyle(
                                                fontFamily: 'ABeeZee',
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                // Second Column
                                Expanded(
                                  flex: constraints.maxWidth > 600
                                      ? 1
                                      : 2, // Adjust flex based on screen width
                                  child: FittedBox(
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          child: Container(
                                            color: Colors.white,
                                            child: Padding(
                                              padding: const EdgeInsets.all(4),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const SizedBox(width: 10),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      const Text(
                                                        'Rating',
                                                        style: TextStyle(
                                                          fontFamily: 'ABeeZee',
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: 5.0),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: List.generate(
                                                            5, (index) {
                                                          return const Icon(
                                                            Icons.star,
                                                            color: Colors.amber,
                                                            size: 20.0,
                                                          );
                                                        }),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(width: 10),
                                                  const CircleAvatar(
                                                    radius: 30,
                                                    backgroundImage: AssetImage(
                                                        'assets/images/mentor.jpg'),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 30.0),
                                          child: Text(
                                            'Ramasami',
                                            style: TextStyle(
                                              fontFamily: 'ABeeZee',
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 4,
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              20,
                            ),
                            topRight: Radius.circular(
                              20,
                            ),
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
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: MediaQuery.sizeOf(context).height / 5,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: HexColor("#3c61a7"),
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: 80,
                                      width: 80,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 10,
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(5),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "80%",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.green,
                                                  ),
                                                ),
                                                FittedBox(
                                                  child: Text("Attendance"),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 80,
                                      width: 80,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 10,
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                // Ensure the text fits well within the container
                                                FittedBox(
                                                  fit: BoxFit
                                                      .scaleDown, // Scale down text to fit if needed
                                                  child: Text(
                                                    "5D",
                                                    style: TextStyle(
                                                      fontSize:
                                                          20, // Adjust font size as needed
                                                      color: Colors.red,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                    height:
                                                        4), // Space between lines
                                                FittedBox(
                                                  fit: BoxFit
                                                      .scaleDown, // Scale down text to fit if needed
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        "Time",
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          height:
                                                              0.1, // Adjust font size as needed
                                                        ),
                                                      ),
                                                      Text(
                                                        "Remaining",
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          height:
                                                              1.6, // Adjust font size as needed
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Expanded(child: SizedBox()),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Rewards_Main_Page()), // Correct usage
                                        );
                                      },
                                      child: SizedBox(
                                        height: 80,
                                        width: 80,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 10,
                                            vertical: 10,
                                          ),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .center, // Center the content vertically
                                                children: [
                                                  Image.asset(
                                                      "assets/images/Rewards_icon-removebg-preview.png"),
                                                  // Adjust text size and spacing to fit within the container
                                                  FittedBox(
                                                    fit: BoxFit.fitWidth,
                                                    child: Column(
                                                      mainAxisSize: MainAxisSize
                                                          .min, // Ensure the column takes minimum space
                                                      children: [
                                                        Text(
                                                          "Reward",
                                                          style: TextStyle(
                                                            fontSize:
                                                                fontSize, // Adjust font size as needed
                                                            height:
                                                                0.5, // Adjust line height to reduce space
                                                          ),
                                                        ),
                                                        Text(
                                                          "Points",
                                                          style: TextStyle(
                                                            fontSize:
                                                                fontSize, // Adjust font size as needed
                                                            height:
                                                                1.1, // Adjust line height to reduce space
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ActionPlan()), // Correct usage
                                        );
                                      },
                                      child: SizedBox(
                                        height: 80,
                                        width: 80,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 10,
                                            vertical: 10,
                                          ),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .center, // Center the content vertically
                                                children: [
                                                  Image.asset(
                                                      "assets/images/icon-park-twotone_degree-hat.png"),
                                                  // Adjust text size and spacing to fit within the container
                                                  FittedBox(
                                                    fit: BoxFit.fitWidth,
                                                    child: Column(
                                                      mainAxisSize: MainAxisSize
                                                          .min, // Ensure the column takes minimum space
                                                      children: [
                                                        Text(
                                                          "Placement",
                                                          style: TextStyle(
                                                            fontSize: fontSize,
                                                            // // Decrease font size to fit text
                                                            height:
                                                                0.5, // Adjust line height to reduce space
                                                          ),
                                                        ),
                                                        Text(
                                                          "Scope",
                                                          style: TextStyle(
                                                            fontSize:
                                                                fontSize, // Decrease font size to fit text
                                                            height:
                                                                1.4, // Adjust line height to reduce space
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Positioned(
                //   top: MediaQuery.sizeOf(context).height / 6,
                //   right: 0,
                //   left: 0,
                //   child: Container(
                //     decoration: BoxDecoration(
                //       shape: BoxShape.circle,
                //       border: Border.all(),
                //     ),
                //     child: const CircleAvatar(
                //       backgroundColor: Colors.white,
                //       radius: 40,
                //       child: Center(
                //         child: Text(
                //           "1",
                //           style: TextStyle(
                //             fontSize: 50,
                //             color: Colors.black,
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                Positioned(
                  top: screenHeight / 6, // Position from the top
                  right: 0,
                  left: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: avatarRadius,
                      child: Center(
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: textSize,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
