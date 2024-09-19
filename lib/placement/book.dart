import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rewardspage/placement/actionplan.dart'; // Import Google Fonts package

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Book(), // Updated class name
//     );
//   }
// }

class Book extends StatefulWidget {
  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
  bool _cProgrammingLevel4 = false;
  bool _cProgrammingLevel6 = false;
  bool _cProgrammingLevel7 = false;
  bool _cProgrammingLevel8 = false;

  bool _uiUxLevel1 = false;
  bool _uiUxLevel2 = false;

  double _cProgrammingProgress = 0.5;
  double _uiUxProgress = 0.7;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/WhatsApp Image 2024-09-11 at 14.17.16_5ce8e650.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: screenHeight * 0.15,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Text(
                          'C Programming',
                          style: GoogleFonts.aBeeZee(
                            fontSize: screenWidth * 0.06,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      SizedBox(height: 24.0),

                      // C Programming Checkboxes
                      CheckboxListTile(
                        value: _cProgrammingLevel4,
                        onChanged: (bool? value) {
                          setState(() {
                            _cProgrammingLevel4 = value ?? false;
                          });
                        },
                        title: Text(
                          'C-Programming Level - 4',
                          style: GoogleFonts.aBeeZee(
                            fontSize: screenWidth * 0.04,
                            color: Colors.black,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: EdgeInsets.zero,
                        activeColor: Colors.blue,
                      ),
                      CheckboxListTile(
                        value: _cProgrammingLevel6,
                        onChanged: (bool? value) {
                          setState(() {
                            _cProgrammingLevel6 = value ?? false;
                          });
                        },
                        title: Text(
                          'C-Programming Level - 6',
                          style: GoogleFonts.aBeeZee(
                            fontSize: screenWidth * 0.04,
                            color: Colors.black,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: EdgeInsets.zero,
                        activeColor: Colors.blue,
                      ),
                      CheckboxListTile(
                        value: _cProgrammingLevel7,
                        onChanged: (bool? value) {
                          setState(() {
                            _cProgrammingLevel7 = value ?? false;
                          });
                        },
                        title: Text(
                          'C-Programming Level - 7',
                          style: GoogleFonts.aBeeZee(
                            fontSize: screenWidth * 0.04,
                            color: Colors.black,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: EdgeInsets.zero,
                        activeColor: Colors.blue,
                      ),
                      CheckboxListTile(
                        value: _cProgrammingLevel8,
                        onChanged: (bool? value) {
                          setState(() {
                            _cProgrammingLevel8 = value ?? false;
                          });
                        },
                        title: Text(
                          'C-Programming Level - 8',
                          style: GoogleFonts.aBeeZee(
                            fontSize: screenWidth * 0.04,
                            color: Colors.black,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: EdgeInsets.zero,
                        activeColor: Colors.blue,
                      ),
                      SizedBox(height: 20.0),

                      // Progress Indicator
                      Container(
                        height: 8.0,
                        child: LinearProgressIndicator(
                          value: _cProgrammingProgress,
                          backgroundColor: Colors.grey[300],
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(height: 40.0),

                      // UI/UX Section
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Text(
                          'Addition Course',
                          style: GoogleFonts.aBeeZee(
                            fontSize: screenWidth * 0.06,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      SizedBox(height: 24.0),

                      // UI/UX Checkboxes
                      CheckboxListTile(
                        value: _uiUxLevel1,
                        onChanged: (bool? value) {
                          setState(() {
                            _uiUxLevel1 = value ?? false;
                          });
                        },
                        title: Text(
                          'UI/UX Level - 1',
                          style: GoogleFonts.aBeeZee(
                            fontSize: screenWidth * 0.04,
                            color: Colors.black,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: EdgeInsets.zero,
                        activeColor: Colors.blue,
                      ),
                      CheckboxListTile(
                        value: _uiUxLevel2,
                        onChanged: (bool? value) {
                          setState(() {
                            _uiUxLevel2 = value ?? false;
                          });
                        },
                        title: Text(
                          'UI/UX Level - 2',
                          style: GoogleFonts.aBeeZee(
                            fontSize: screenWidth * 0.04,
                            color: Colors.black,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: EdgeInsets.zero,
                        activeColor: Colors.blue,
                      ),
                      SizedBox(height: 24.0),

                      // Note Text with Border
                      Container(
                        padding: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFA5A5A5),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text(
                          'Note: If you completed UI/UX (Level 1 and 2) Group: 2',
                          style: GoogleFonts.aBeeZee(
                            fontSize: screenWidth * 0.035,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 24.0),

                      // Book a Slot Button
                      ElevatedButton(
                        onPressed: () {
                          print("Book a Slot button pressed");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 12.0),
                        ),
                        child: Text(
                          'Book a Slot',
                          style: GoogleFonts.aBeeZee(
                            fontSize: screenWidth * 0.045,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 60.0,
            left: 16.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios,
                        size: 30.0, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FullScreenImageWithText(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(width: 10.0),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Back',
                    style: GoogleFonts.aBeeZee(
                      fontSize: screenWidth * 0.045,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
