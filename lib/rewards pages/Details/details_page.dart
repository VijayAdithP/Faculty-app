import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rewardspage/QR/qr_gen_page.dart';
import 'package:rewardspage/rewards%20pages/Details/Star%20Transfer/trasnfer_page.dart';
import 'package:rewardspage/rewards%20pages/Details/ranks/leaderboards_page.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  Future<void> QRScan() async {
    String resultData;
    try {
      resultData = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666",
        "Cancel",
        true,
        ScanMode.QR,
      );

      if (resultData != "-1") {
        setState(() {
          QRData = resultData;
        });
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TransferPage(
              qrData: QRData,
              senderName: senderName,
              senderRollNo: rollnum,
            ),
          ),
        );
      }
    } on PlatformException {
      resultData = "Failed to scan!";
    }
  }

  String QRData = "nothing";
  final String? rollnum = "7376221CD158";
  String senderName = "Vijay Adith P";
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
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                            "Reward Details",
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
                    flex: 4,
                    child: Container(
                      width: MediaQuery.sizeOf(context).width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          opacity: 0.3,
                          alignment: Alignment.bottomCenter,
                          image:
                              AssetImage("assets/images/background_leaves.png"),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.sizeOf(context).height * 0.17,
                          right: 30,
                          left: 30,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 160,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Reward Point",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                            "assets/images/image 16.png"),
                                        const Text(
                                          "2,500.00",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 25,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: SizedBox(
                                  height: 7.0,
                                  width: MediaQuery.sizeOf(context).width,
                                  child: LinearProgressIndicator(
                                    color: HexColor("#838282"),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    value: 10 / 20,
                                  ),
                                ),
                              ),
                              Text(
                                "Limited Star",
                                style: TextStyle(
                                  color: Colors.grey[800],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 35, bottom: 25),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: HexColor("#d4d4d4"),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.black45,
                                          ),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 10,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                                "assets/images/image 26.png"),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            const Text(
                                              "Buy Stars",
                                              style: TextStyle(
                                                fontSize: 13,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return SimpleDialog(
                                              backgroundColor:
                                                  Colors.transparent,
                                              elevation: 0,
                                              contentPadding:
                                                  const EdgeInsets.all(20),
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            QrGenPage(
                                                          qrstring: rollnum,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                    height: 50,
                                                    width: MediaQuery.sizeOf(
                                                            context)
                                                        .width,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color:
                                                          HexColor("#5a7fc5"),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        "Generate QR",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(height: 30),
                                                GestureDetector(
                                                  onTap: QRScan,
                                                  child: Container(
                                                    height: 50,
                                                    width: MediaQuery.sizeOf(
                                                            context)
                                                        .width,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.green,
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        "Scan QR",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: HexColor("#d4d4d4"),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.black45,
                                            ),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 10,
                                            vertical: 10,
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                  "assets/images/image 27.png"),
                                              const SizedBox(height: 5),
                                              const Text(
                                                "Qr Code",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ],
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
                                                const LeaderboardPage(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: HexColor("#d4d4d4"),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.black45,
                                            ),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 15,
                                            vertical: 10,
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                  "assets/images/image 28.png"),
                                              const SizedBox(height: 5),
                                              const Text(
                                                "Ranks",
                                                style: TextStyle(
                                                  fontSize: 13,
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
                              const Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.timelapse_outlined),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 5),
                                      child: Text(
                                        "Recent Transcation",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width,
                                height: 180,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: 2,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      contentPadding: EdgeInsets.zero,
                                      leading: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          color: HexColor("#c3c3c3"),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: const Icon(
                                            Icons.arrow_upward_rounded),
                                      ),
                                      title: const Text(
                                        "Events....",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: const Text("12 March 2024"),
                                      trailing: const Text(
                                        "300 Rp",
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 18,
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
                  ),
                ],
              ),
              Positioned(
                right: 20,
                left: 20,
                top: 70,
                child: Container(
                  height: MediaQuery.sizeOf(context).height * 0.24,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade600,
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: const Offset(0, 5),
                      )
                    ],
                    color: HexColor("#9fb0d2"),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        40,
                      ),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        40,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  "Rewards",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      "assets/images/Vector.png",
                                    ),
                                  ),
                                  const Text(
                                    "2022- 2026",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          FittedBox(
                            child: Text(
                              senderName,
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const FittedBox(
                            child: Text(
                              "7376221CD158",
                              style: TextStyle(
                                letterSpacing: 5,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
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
  }
}
