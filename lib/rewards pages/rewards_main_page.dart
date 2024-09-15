import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:rewardspage/rewards%20pages/Details/Star%20Transfer/trasnfer_page.dart';
import 'package:rewardspage/rewards%20pages/Details/details_page.dart';
import 'package:rewardspage/rewards%20pages/Statement/statement_page.dart';

class Rewards_Main_Page extends StatefulWidget {
  const Rewards_Main_Page({super.key});

  @override
  State<Rewards_Main_Page> createState() => _Rewards_Main_PageState();
}

class _Rewards_Main_PageState extends State<Rewards_Main_Page> {
  List<BarChartGroupData> _buildBarGroups(Map<String, int> data, int maxY) {
    List<BarChartGroupData> barGroups = [];
    int index = 0;
    data.forEach((month, value) {
      barGroups.add(
        BarChartGroupData(
          x: index,
          barRods: [
            BarChartRodData(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
              toY: value.toDouble(),
              color: Colors.blue,
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                // stops: const [0.0, 0.9],
                end: Alignment.topLeft,
                colors: [
                  HexColor("#6c6599"),
                  HexColor("#9691b5"),
                ],
              ),
              width: 30,
            ),
          ],
        ),
      );
      index++;
    });
    return barGroups;
  }

  final Map<String, int> data = {
    'Jan': 2000,
    'Feb': 1500,
    'Mar': 3000,
    'Apr': 1000,
    'May': 4000,
    'Jun': 3500,
    'Jul': 2500,
    'Aug': 5000,
    'Sep': 4500,
  };

  String todaysdate = DateFormat.yMd().format(DateTime.now());
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int maxY = data.values.reduce((a, b) => a > b ? a : b);

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
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: HexColor("#e1a206"),
                          child: const Icon(Icons.person),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.0,
                          ),
                          child: Text(
                            "VIJAY ADITH P",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 130,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Reward Point",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("assets/images/image 11.png"),
                                  const Text(
                                    "2,500.00",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Your Stars",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                textBaseline: TextBaseline.ideographic,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                children: List.generate(3, (index) {
                                  return Image.asset(
                                    "assets/images/image 3${(index + 6) + 1}.png",
                                    width: 40,
                                  );
                                }),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const TransferPage(
                                    senderName: "VIJAY ADITH P",
                                    senderRollNo: "7376221CD158",
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black45,
                                    )
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 10,
                                ),
                                child: FittedBox(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/images/image 14.png"),
                                      const Text(
                                        "Transfer",
                                        style: TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
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
                                  builder: (context) => const DetailsPage(),
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black45,
                                    )
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 10,
                                ),
                                child: FittedBox(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/images/image 12.png"),
                                      const Text(
                                        "Details",
                                        style: TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
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
                                      const StatementListPage(),
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black45,
                                    )
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 10,
                                ),
                                child: FittedBox(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/images/image 13.png"),
                                      const Text(
                                        "Statement",
                                        style: TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
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
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 30,
                            horizontal: 30,
                          ),
                          child: SizedBox(
                            width: 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Total Rewards",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  children: [
                                    Image.asset("assets/images/image 16.png"),
                                    const SizedBox(width: 10),
                                    const Text(
                                      "2,500.00",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30, left: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                todaysdate,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                "data",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                "data",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8, left: 8),
                          child: Divider(thickness: 2),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.35,
                          child: PageView.builder(
                            controller: _pageController,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "Yearly Graph",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  if (_pageController
                                                      .hasClients) {
                                                    _pageController
                                                        .previousPage(
                                                      duration: const Duration(
                                                          milliseconds: 300),
                                                      curve: Curves.easeInOut,
                                                    );
                                                  }
                                                },
                                                child: const Icon(
                                                  Icons.arrow_back_ios_rounded,
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  if (_pageController
                                                      .hasClients) {
                                                    _pageController.nextPage(
                                                      duration: const Duration(
                                                          milliseconds: 300),
                                                      curve: Curves.easeInOut,
                                                    );
                                                  }
                                                },
                                                child: const Icon(
                                                  Icons
                                                      .arrow_forward_ios_rounded,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Reward points of $todaysdate",
                                            style: TextStyle(
                                              color: Colors.grey[400],
                                            ),
                                          ),
                                          GestureDetector(
                                            child: const SizedBox(
                                              width: 60,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Icon(
                                                    size: 15,
                                                    Icons.share,
                                                  ),
                                                  Text("Share"),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      SizedBox(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.22,
                                        child: BarChart(
                                          BarChartData(
                                            alignment:
                                                BarChartAlignment.spaceAround,
                                            maxY: (maxY * 1.1).toDouble(),
                                            barGroups:
                                                _buildBarGroups(data, maxY),
                                            titlesData: FlTitlesData(
                                              show: true,
                                              bottomTitles: AxisTitles(
                                                sideTitles: SideTitles(
                                                  showTitles: true,
                                                  getTitlesWidget:
                                                      (double value,
                                                          TitleMeta meta) {
                                                    final months =
                                                        data.keys.toList();
                                                    return Text(
                                                      months[value.toInt()],
                                                      style: const TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    );
                                                  },
                                                  reservedSize: 30,
                                                ),
                                              ),
                                              leftTitles: const AxisTitles(
                                                sideTitles: SideTitles(
                                                    showTitles: false),
                                              ),
                                              topTitles: const AxisTitles(
                                                sideTitles: SideTitles(
                                                    showTitles: false),
                                              ),
                                              rightTitles: const AxisTitles(
                                                sideTitles: SideTitles(
                                                    showTitles: false),
                                              ),
                                            ),
                                            gridData:
                                                const FlGridData(show: false),
                                            borderData:
                                                FlBorderData(show: false),
                                            barTouchData:
                                                BarTouchData(enabled: true),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
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
