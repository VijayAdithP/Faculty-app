import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

class StatementListPage extends StatefulWidget {
  const StatementListPage({super.key});

  @override
  State<StatementListPage> createState() => _StatementListPageState();
}

class _StatementListPageState extends State<StatementListPage> {
  String monthAndYear = DateFormat('MM/yyyy').format(DateTime.now());

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
                        "Statement",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 10,
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
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      right: 20,
                      left: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Reward Points",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                int nestedItemCount = 5;
                                double calculatedHeight = nestedItemCount * 75;
                                return Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          monthAndYear,
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey[400],
                                          ),
                                        ),
                                        const Text(
                                          "300 Rp",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: calculatedHeight,
                                      child: ListView.builder(
                                          padding: EdgeInsets.zero,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount: nestedItemCount,
                                          itemBuilder: (context, index) {
                                            return ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              leading: Container(
                                                height: 50,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                  color: HexColor("#c3c3c3"),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    15,
                                                  ),
                                                ),
                                                child: const Icon(
                                                  Icons.arrow_upward_rounded,
                                                ),
                                              ),
                                              title: const Text(
                                                "Events....",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              subtitle: Text(
                                                "12 March 2024",
                                                style: TextStyle(
                                                  color: Colors.grey[400],
                                                ),
                                              ),
                                              trailing: const Text(
                                                "300 Rp",
                                                style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            );
                                          }),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Divider(
                                      thickness: 3,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
