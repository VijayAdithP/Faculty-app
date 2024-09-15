import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGenPage extends StatefulWidget {
  final String? qrstring;
  const QrGenPage({required this.qrstring, super.key});

  @override
  State<QrGenPage> createState() => _QrGenPageState();
}

class _QrGenPageState extends State<QrGenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              "assets/images/WhatsApp Image 2024-09-11 at 14.17.16_5ce8e650.jpg",
            ),
          ),
        ),
        child: SafeArea(
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
                        "Qr code",
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
                      opacity: 0.3,
                      image: AssetImage(
                        "assets/images/background_leaves.png",
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(
                      16,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Expanded(child: SizedBox()),
                        QrImageView(
                          data: widget.qrstring!,
                        ),
                        const Expanded(child: SizedBox()),
                        Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: HexColor("#5f80c7"),
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                30,
                              ),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.share,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Share")
                            ],
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
