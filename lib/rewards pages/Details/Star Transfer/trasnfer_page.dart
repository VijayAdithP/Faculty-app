import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rewardspage/rewards%20pages/Transfer/transfer_completion_page.dart';

class TransferPage extends StatefulWidget {
  final String? qrData;
  final String? senderName;
  final String? senderRollNo;
  const TransferPage(
      {super.key, this.qrData, this.senderName, this.senderRollNo});

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  String selectedStar = "None";
  String? selectedStarPng;
  TextEditingController remarkController = TextEditingController();
  TextEditingController qrDataController = TextEditingController();

  @override
  void initState() {
    super.initState();
    qrDataController.text = widget.qrData ?? '';
  }

  void passPng() {
    if (selectedStar == "Diamond Star") {
      selectedStarPng = "assets/images/image 39.png";
    } else if (selectedStar == "Gold Star") {
      selectedStarPng = "assets/images/image 36.png";
    } else if (selectedStar == "Silver Star") {
      selectedStarPng = "assets/images/image 37.png";
    } else if (selectedStar == "Bronze Star") {
      selectedStarPng = "assets/images/image 38.png";
    } else {
      selectedStarPng = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
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
                        "Transfer",
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
                      fit: BoxFit.fitWidth,
                      opacity: 0.3,
                      alignment: Alignment.bottomCenter,
                      image: AssetImage(
                        "assets/images/background_leaves.png",
                      ),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Payee Id:"),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            textBaseline: TextBaseline.alphabetic,
                            textDirection: TextDirection.ltr,
                            children: [
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.3,
                                child: TextField(
                                  textInputAction: TextInputAction.done,
                                  maxLines: null,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                  controller: qrDataController,
                                  decoration: const InputDecoration(
                                    hintText: "Enter Payee ID",
                                    hintStyle: TextStyle(
                                      fontSize: 13,
                                    ),
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                              const Text("Will be the name"),
                              const Icon(Icons.person_2_outlined),
                            ],
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text("From:"),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FittedBox(
                                child: Text("${widget.senderRollNo}"),
                              ),
                              FittedBox(
                                child: Text("${widget.senderName}"),
                              ),
                              const Icon(Icons.person_2_outlined),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text("Enter your stars:"),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Radio<String>(
                                fillColor: WidgetStateProperty.all(
                                  Colors.black,
                                ),
                                value: "Diamond Star",
                                groupValue: selectedStar,
                                onChanged: (value) {
                                  setState(() {
                                    selectedStar = value!;
                                  });
                                },
                              ),
                              Image.asset(
                                "assets/images/image 39.png",
                                width: 40,
                                height: 40,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Radio<String>(
                                fillColor: WidgetStateProperty.all(
                                  Colors.black,
                                ),
                                value: "Gold Star",
                                groupValue: selectedStar,
                                onChanged: (value) {
                                  setState(() {
                                    selectedStar = value!;
                                  });
                                },
                              ),
                              Image.asset(
                                "assets/images/image 36.png",
                                width: 40,
                                height: 40,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Radio<String>(
                                fillColor: WidgetStateProperty.all(
                                  Colors.black,
                                ),
                                value: "Silver Star",
                                groupValue: selectedStar,
                                onChanged: (value) {
                                  setState(() {
                                    selectedStar = value!;
                                  });
                                },
                              ),
                              Image.asset(
                                "assets/images/image 37.png",
                                width: 40,
                                height: 40,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Radio<String>(
                                fillColor: WidgetStateProperty.all(
                                  Colors.black,
                                ),
                                value: "Bronze Star",
                                groupValue: selectedStar,
                                onChanged: (value) {
                                  setState(() {
                                    selectedStar = value!;
                                  });
                                },
                              ),
                              Image.asset(
                                "assets/images/image 38.png",
                                width: 40,
                                height: 40,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 17,
                            ),
                            child: Text(
                              selectedStar,
                              style: const TextStyle(
                                color: Colors.green,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text("Remarks"),
                          TextField(
                            controller: remarkController,
                            decoration: const InputDecoration(
                                hintText: "Enter remarks"),
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              if (selectedStar != 'None' &&
                                  qrDataController.text.isNotEmpty &&
                                  remarkController.text.isNotEmpty) {
                                passPng();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        TransferCompletionPage(
                                      fromID: widget.senderRollNo,
                                      payeeID: qrDataController.text,
                                      remarks: remarkController.text,
                                      starsAsText: selectedStar,
                                      starsAsPng: selectedStarPng,
                                    ),
                                  ),
                                );
                              } else {
                                const snackBar = SnackBar(
                                  content: Text('Fill all the fields'),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              }
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
                                    "PROCEED",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
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
