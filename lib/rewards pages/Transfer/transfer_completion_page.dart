import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rewardspage/rewards%20pages/rewards_main_page.dart';

class TransferCompletionPage extends StatefulWidget {
  final String? payeeID;
  final String? fromID;
  final String? starsAsText;
  final String? starsAsPng;
  final String? remarks;
  const TransferCompletionPage({
    super.key,
    this.payeeID,
    this.fromID,
    this.starsAsText,
    this.remarks,
    this.starsAsPng,
  });

  @override
  State<TransferCompletionPage> createState() => _TransferCompletionPageState();
}

class _TransferCompletionPageState extends State<TransferCompletionPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.offAll(
                            const Rewards_Main_Page(),
                          );
                        },
                        child: Image.asset("assets/images/image 33.png"),
                      ),
                      const Expanded(
                        child: Center(
                          child: Text(
                            "Confirmation",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 9,
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
                      fit: BoxFit.fitWidth,
                      opacity: 0.3,
                      alignment: Alignment.bottomCenter,
                      image: AssetImage(
                        "assets/images/background_leaves.png",
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 40.0,
                      left: 40.0,
                      top: 50,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const FittedBox(
                            child: Text(
                              "Transaction Successful!",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                              gradient: LinearGradient(
                                colors: [
                                  HexColor("#778fbe"),
                                  HexColor("#FFFFFF"),
                                ],
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(2),
                              child: Center(
                                child: Text(
                                  "Transaction ID: 123",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text("data"),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Total Transfered",
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                widget.starsAsPng!,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 40,
                              top: 10,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Payee ID",
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 150,
                                        child: Text(
                                          widget.payeeID ?? "null",
                                          style: const TextStyle(
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "From",
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        child: Text(
                                          widget.fromID ?? "null",
                                          style: const TextStyle(
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Stars",
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 150,
                                        child: Text(
                                          "One ${widget.starsAsText ?? "null"} Star only",
                                          style: const TextStyle(
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Remarks",
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 150,
                                        child: Text(
                                          widget.remarks ?? "null",
                                          style: const TextStyle(
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 40,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        10,
                                      ),
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    child: const FittedBox(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.share_outlined,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text("Share Receipt"),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        10,
                                      ),
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    child: const FittedBox(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.file_download_outlined,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Download Receipt",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.offAll(
                                const Rewards_Main_Page(),
                              );
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 15,
                              ),
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(0, 3),
                                  )
                                ],
                                gradient: LinearGradient(
                                  colors: [
                                    HexColor("#3359a3"),
                                    HexColor("#6683ba"),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Done",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
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
      ),
    );
  }
}
