import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BackgroundImage extends StatefulWidget {
  const BackgroundImage({super.key});

  @override
  State<BackgroundImage> createState() => _BackgroundImageState();
}

class _BackgroundImageState extends State<BackgroundImage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FittedBox(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 3.0,
                                right: 3.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      100,
                                    ),
                                    child: Container(
                                      color: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.all(
                                          4,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const CircleAvatar(
                                              radius: 30,
                                              backgroundImage: AssetImage(
                                                'assets/student.jpg',
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Center(
                                                  child: Text(
                                                    'Rating',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(height: 5.0),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children:
                                                      List.generate(5, (index) {
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
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 10.0),
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
                          FittedBox(
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    100,
                                  ),
                                  child: Container(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(
                                        4,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const SizedBox(width: 10),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                'Rating',
                                                style: TextStyle(
                                                  fontFamily: 'ABeeZee',
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              const SizedBox(height: 5.0),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children:
                                                    List.generate(5, (index) {
                                                  return const Icon(
                                                    Icons.star,
                                                    color: Colors.amber,
                                                    size: 20.0,
                                                  );
                                                }),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const CircleAvatar(
                                            radius: 30,
                                            backgroundImage:
                                                AssetImage('assets/mentor.jpg'),
                                          ),
                                          // const SizedBox(width: 10),
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
                        ],
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
                                                "5D",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.red,
                                                ),
                                              ),
                                              FittedBox(
                                                child: Text("Time remaining"),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  GestureDetector(
                                    onTap: () {},
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
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                    "assets/images/Rewards_icon-removebg-preview.png"),
                                                const Text("data"),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
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
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                    "assets/images/icon-park-twotone_degree-hat.png"),
                                                const Text(
                                                  "data",
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
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
              Positioned(
                top: MediaQuery.sizeOf(context).height / 6,
                right: 0,
                left: 0,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(),
                  ),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: Center(
                      child: Text(
                        "1",
                        style: TextStyle(
                          fontSize: 50,
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
    );

    // Scaffold(
    //   body: Container(
    //     decoration: const BoxDecoration(
    //       image: DecorationImage(
    //         fit: BoxFit.fill,
    //         image: AssetImage(
    //           "assets/images/WhatsApp Image 2024-09-11 at 14.17.16_5ce8e650.jpg",
    //         ),
    //       ),
    //     ),
    //     child: Stack(
    //       children: [
    //         // Background elements
    //         Positioned.fill(
    //           child: Column(
    //             children: [
    //               const SizedBox(height: 50),
    // Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: [
    //     Padding(
    //       padding: const EdgeInsets.only(left: 3.0),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           ClipRRect(
    //             borderRadius: BorderRadius.circular(75.0),
    //             child: Container(
    //               width: 190,
    //               height: 80,
    //               color: Colors.white,
    //               child: Row(
    //                 children: [
    //                   Padding(
    //                     padding: const EdgeInsets.only(left: 5.0),
    //                     child: CircleAvatar(
    //                       radius: 30,
    //                       backgroundImage:
    //                           AssetImage('assets/student.jpg'),
    //                     ),
    //                   ),
    //                   SizedBox(width: 10),
    //                   Expanded(
    //                     child: Column(
    //                       crossAxisAlignment:
    //                           CrossAxisAlignment.start,
    //                       mainAxisAlignment:
    //                           MainAxisAlignment.center,
    //                       children: [
    //                         Center(
    //                           child: Text(
    //                             'Rating',
    //                             style: TextStyle(
    //                               fontFamily: 'ABeeZee',
    //                               fontSize: 20,
    //                               fontWeight: FontWeight.normal,
    //                               color: Colors.black,
    //                             ),
    //                           ),
    //                         ),
    //                         SizedBox(height: 5.0),
    //                         Row(
    //                           mainAxisAlignment:
    //                               MainAxisAlignment.center,
    //                           children: List.generate(5, (index) {
    //                             return Icon(
    //                               Icons.star,
    //                               color: Colors.amber,
    //                               size: 20.0,
    //                             );
    //                           }),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                   SizedBox(width: 10),
    //                 ],
    //               ),
    //             ),
    //           ),
    //           SizedBox(height: 10),
    //           Padding(
    //             padding: const EdgeInsets.only(left: 10.0),
    //             child: Text(
    //               'Hi Aswath',
    //               style: TextStyle(
    //                 fontFamily: 'ABeeZee',
    //                 fontSize: 25,
    //                 fontWeight: FontWeight.bold,
    //                 color: Colors.white,
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.only(right: 3.0),
    //       child: Column(
    //         children: [
    //           ClipRRect(
    //             borderRadius: BorderRadius.circular(75.0),
    //             child: Container(
    //               width: 190,
    //               height: 80,
    //               color: Colors.white,
    //               child: Row(
    //                 mainAxisAlignment:
    //                     MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Padding(
    //                     padding:
    //                         const EdgeInsets.only(left: 15.0),
    //                     child: Expanded(
    //                       child: Column(
    //                         crossAxisAlignment:
    //                             CrossAxisAlignment.center,
    //                         mainAxisAlignment:
    //                             MainAxisAlignment.center,
    //                         children: [
    //                           Text(
    //                             'Rating',
    //                             style: TextStyle(
    //                               fontFamily: 'ABeeZee',
    //                               fontSize: 20,
    //                               fontWeight: FontWeight.normal,
    //                               color: Colors.black,
    //                             ),
    //                           ),
    //                           SizedBox(height: 5.0),
    //                           Row(
    //                             mainAxisAlignment:
    //                                 MainAxisAlignment.center,
    //                             children:
    //                                 List.generate(5, (index) {
    //                               return Icon(
    //                                 Icons.star,
    //                                 color: Colors.amber,
    //                                 size: 20.0,
    //                               );
    //                             }),
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding:
    //                         const EdgeInsets.only(right: 5.0),
    //                     child: CircleAvatar(
    //                       radius: 30,
    //                       backgroundImage:
    //                           AssetImage('assets/mentor.jpg'),
    //                     ),
    //                   ),
    //                   SizedBox(width: 10),
    //                 ],
    //               ),
    //             ),
    //           ),
    //           SizedBox(height: 10),
    //           Padding(
    //             padding: const EdgeInsets.only(left: 30.0),
    //             child: Text(
    //               'Ramasami',
    //               style: TextStyle(
    //                 fontFamily: 'ABeeZee',
    //                 fontSize: 25,
    //                 fontWeight: FontWeight.bold,
    //                 color: Colors.white,
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ],
    // ),
    //               Expanded(
    //                 child: Padding(
    //                   padding: const EdgeInsets.only(top: 20.0),
    //                   child: Stack(
    //                     children: [
    //                       Positioned.fill(
    //                         child: ClipRRect(
    //                           borderRadius: BorderRadius.only(
    //                             topLeft: Radius.circular(bottomRectangleRadius),
    //                             topRight:
    //                                 Radius.circular(bottomRectangleRadius),
    //                           ),
    //                           child: Container(
    //                             width: double.infinity,
    //                             color: Colors.white,
    //                             child: Stack(
    //                               children: [
    //                                 Positioned(
    //                                   left: 5.0, // Align the left side
    //                                   top:
    //                                       10.0, // Reduced top value to decrease the gap
    //                                   child: Container(
    //                                     width: 405,
    //                                     height: 90,
    //                                     decoration: BoxDecoration(
    //                                       color:
    //                                           Color.fromARGB(255, 22, 115, 191),
    //                                       borderRadius:
    //                                           BorderRadius.circular(40.0),
    //                                     ),
    //                                     child: Stack(
    //                                       children: [
    //                                         Positioned(
    //                                           left: 15.0,
    //                                           top:
    //                                               15.0, // Keep the top value for the square container
    //                                           child: ClipRRect(
    //                                             borderRadius:
    //                                                 BorderRadius.circular(10.0),
    //                                             child: Container(
    //                                               width: 60,
    //                                               height: 60,
    //                                               color: Colors.white,
    //                                               child: Stack(
    //                                                 children: [
    //                                                   Positioned(
    //                                                     top:
    //                                                         5.0, // Move the "80%" text up
    //                                                     left: 0,
    //                                                     right: 0,
    //                                                     child: Center(
    //                                                       child: Text(
    //                                                         '80%',
    //                                                         style: TextStyle(
    //                                                           color:
    //                                                               Colors.green,
    //                                                           fontSize: 30,
    //                                                           fontWeight:
    //                                                               FontWeight
    //                                                                   .bold,
    //                                                         ),
    //                                                       ),
    //                                                     ),
    //                                                   ),
    //                                                   Positioned(
    //                                                     bottom: 0,
    //                                                     top: 35,
    //                                                     left: 0,
    //                                                     right: 0,
    //                                                     child: Center(
    //                                                       child: Text(
    //                                                         'Attendance',
    //                                                         style: TextStyle(
    //                                                           fontFamily:
    //                                                               'ABeeZee',
    //                                                           fontSize: 12,
    //                                                           fontWeight:
    //                                                               FontWeight
    //                                                                   .normal,
    //                                                         ),
    //                                                         textAlign: TextAlign
    //                                                             .center,
    //                                                       ),
    //                                                     ),
    //                                                   ),
    //                                                 ],
    //                                               ),
    //                                             ),
    //                                           ),
    //                                         ),
    //                                         Positioned(
    //                                           left: 88.0,
    //                                           top:
    //                                               15.0, // Keep the top value for the square container
    //                                           child: ClipRRect(
    //                                             borderRadius:
    //                                                 BorderRadius.circular(10.0),
    //                                             child: Container(
    //                                               width: 60,
    //                                               height: 60,
    //                                               color: Colors.white,
    //                                               child: Stack(
    //                                                 children: [
    //                                                   Positioned(
    //                                                     top:
    //                                                         3.0, // Move the "80%" text up
    //                                                     left: 0,
    //                                                     right: 0,
    //                                                     child: Center(
    //                                                       child: Text(
    //                                                         '5D',
    //                                                         style: TextStyle(
    //                                                           color: Colors.red,
    //                                                           fontSize: 28,
    //                                                           fontWeight:
    //                                                               FontWeight
    //                                                                   .bold,
    //                                                         ),
    //                                                       ),
    //                                                     ),
    //                                                   ),
    //                                                   Positioned(
    //                                                     bottom: 0,
    //                                                     top: 30,
    //                                                     left: 0,
    //                                                     right: 0,
    //                                                     child: Center(
    //                                                       child: Text(
    //                                                         'Time Remainig',
    //                                                         style: TextStyle(
    //                                                           fontFamily:
    //                                                               'ABeeZee',
    //                                                           fontSize: 12,
    //                                                           fontWeight:
    //                                                               FontWeight
    //                                                                   .normal,
    //                                                         ),
    //                                                         textAlign: TextAlign
    //                                                             .center,
    //                                                       ),
    //                                                     ),
    //                                                   ),
    //                                                 ],
    //                                               ),
    //                                             ),
    //                                           ),
    //                                         ),
    //                                         Positioned(
    //                                           right:
    //                                               88.0, // Adjusted to leave a gap
    //                                           top: 15.0,
    //                                           child: ClipRRect(
    //                                             borderRadius:
    //                                                 BorderRadius.circular(10.0),
    //                                             child: Container(
    //                                               width: 60,
    //                                               height: 60,
    //                                               color: Colors.white,
    //                                               child: Column(
    //                                                 mainAxisAlignment:
    //                                                     MainAxisAlignment
    //                                                         .center,
    //                                                 children: [
    //                                                   Image.asset(
    //                                                     'assets/medal.png',
    //                                                     width: 29,
    //                                                     height: 25,
    //                                                   ),
    //                                                   SizedBox(height: 5),
    //                                                   Text(
    //                                                     'Reward',
    //                                                     style: TextStyle(
    //                                                       fontFamily: 'ABeeZee',
    //                                                       fontSize: 11,
    //                                                       fontWeight:
    //                                                           FontWeight.normal,
    //                                                     ),
    //                                                   ),
    //                                                   Text(
    //                                                     'Points',
    //                                                     style: TextStyle(
    //                                                       fontFamily: 'ABeeZee',
    //                                                       fontSize: 11,
    //                                                       fontWeight:
    //                                                           FontWeight.normal,
    //                                                     ),
    //                                                   ),
    //                                                 ],
    //                                               ),
    //                                             ),
    //                                           ),
    //                                         ),
    //                                         Positioned(
    //                                           right: 15.0,
    //                                           top: 15.0,
    //                                           child: ClipRRect(
    //                                             borderRadius:
    //                                                 BorderRadius.circular(10.0),
    //                                             child: Container(
    //                                                 width: 60,
    //                                                 height: 60,
    //                                                 color: Colors.white,
    //                                                 child: Column(
    //                                                     mainAxisAlignment:
    //                                                         MainAxisAlignment
    //                                                             .center,
    //                                                     children: [
    //                                                       Image.asset(
    //                                                         'assets/graduation-hat.png',
    //                                                         width: 30,
    //                                                         height: 30,
    //                                                       ),
    //                                                       SizedBox(height: 5),
    //                                                       Text(
    //                                                         'Placement ',
    //                                                         style: TextStyle(
    //                                                           fontFamily:
    //                                                               'ABeeZee',
    //                                                           fontSize: 11,
    //                                                           fontWeight:
    //                                                               FontWeight
    //                                                                   .normal,
    //                                                         ),
    //                                                       ),
    //                                                       Text(
    //                                                         'Scope ',
    //                                                         style: TextStyle(
    //                                                           fontFamily:
    //                                                               'ABeeZee',
    //                                                           fontSize: 10,
    //                                                           fontWeight:
    //                                                               FontWeight
    //                                                                   .normal,
    //                                                         ),
    //                                                       )
    //                                                     ])),
    //                                           ),
    //                                         ),
    //                                       ],
    //                                     ),
    //                                   ),
    //                                 ),
    //                               ],
    //                             ),
    //                           ),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         // White circle on top of all elements
    //         Positioned(
    //           left: 160.0,
    //           top: 160.0, // Adjust the position of the circle to overlap text
    //           child: ClipRRect(
    //             borderRadius: BorderRadius.circular(50.0),
    //             child: Container(
    //               width: 90,
    //               height: 90,
    //               color: Colors.white,
    //               child: Stack(
    //                 children: [
    //                   Center(
    //                     child: Image.asset(
    //                       'assets/number-1.png', // Path to your image
    //                       width: 60, // Adjust the width as needed
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
