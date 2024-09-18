import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:rewardspage/front_page.dart';
import 'package:rewardspage/profile/result/result.dart';

void main() {
  runApp(MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.aBeeZeeTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: MyProfileScreen(),
    );
  }
}

class MyProfileScreen extends StatefulWidget {
  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  File? _imageFile;
  Future<void> _pickImageFromGallery() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/images/WhatsApp Image 2024-09-11 at 14.17.16_5ce8e650.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BackgroundImage()), // Correct usage
                        );
                      },
                    ),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: Text(
                        'My Profile',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // TextButton(
                    //   onPressed: () {},
                    //   child: Row(
                    //     mainAxisSize: MainAxisSize.min,
                    //     children: [
                    //       Icon(
                    //         Icons.check,
                    //         color: Color.fromRGBO(99, 132, 199, 1),
                    //         size: 18.0,
                    //       ),
                    //       SizedBox(width: 4.0),
                    //       Text(
                    //         'DONE',
                    //         style: TextStyle(
                    //           color: Color.fromRGBO(99, 132, 199, 1),
                    //           fontWeight: FontWeight.bold,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    //   style: TextButton.styleFrom(
                    //     backgroundColor: Colors.white,
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(20),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromRGBO(99, 132, 199, 1),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 212, 212, 212),
                                      width: 2.0,
                                    ),
                                    image: DecorationImage(
                                      image: _imageFile != null
                                          ? FileImage(_imageFile!)
                                              as ImageProvider
                                          : NetworkImage(
                                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7vB-49_BT-dirwttYZaeE_VByjlQ3raVJZg&s'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 16.0),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Aswath M',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          IconButton(
                                            icon: Icon(
                                                Icons.camera_alt_outlined,
                                                color: Colors.grey),
                                            onPressed: _pickImageFromGallery,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4.0),
                                      Text(
                                        'Reg no: 7376232IT110',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.grey[700],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20.0),
                          GridView(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 16.0,
                              mainAxisSpacing: 14.0,
                              childAspectRatio: 1.8,
                            ),
                            children: [
                              _buildProfileDetailField(
                                  'Adhar No', '1234 4325 4567 1234'),
                              _buildProfileDetailField(
                                  'Academic Year', '2023-2027'),
                              _buildProfileDetailField('Current Year', 'II'),
                              _buildProfileDetailField(
                                  'Enrollment No', '2023UIT1068'),
                              _buildProfileDetailField(
                                  'Date of Admission', '20 Jun 2023'),
                              _buildProfileDetailField(
                                  'Date of Birth', '09 Oct 2005'),
                            ],
                          ),
                          SizedBox(height: 16.0),
                          _buildProfileDetailField(
                              'Parent Mail ID', 'parentboth84@gmail.com'),
                          _buildProfileDetailField(
                              'Mother Name', 'Monica Larson'),
                          _buildProfileDetailField(
                              'Father Name', 'Bernard Taylor'),
                          _buildProfileDetailField(
                              'Permanent Add.', 'Karol Bagh, Delhi'),
                          SizedBox(height: 20.0),
                          GridView(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 16.0,
                              mainAxisSpacing: 14.0,
                              childAspectRatio: 1.8,
                            ),
                            children: [
                              _buildProfileDetailField('Attandance %', '100 %'),
                              _buildProfileDetailField('Academic %', '95 %'),
                              _buildProfileDetailField(
                                  'Placement Group ', 'Group - 1'),
                              _buildProfileDetailField(
                                  'Placement Scope %', '78 %'),
                              _buildProfileDetailField('Placmenet Rank', '1'),
                              _buildProfileDetailField(
                                  'Placement Points', '9500'),
                              _buildProfileDetailField('Reward Points', '9500'),
                              _buildProfileDetailField('CGPA', '8.47'),
                            ],
                          ),
                          SizedBox(height: 20.0),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'Personalized skill',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            height: 200.0,
                            child: ScrollableSkillList(),
                          ),
                          SizedBox(height: 20.0),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'Leave Details',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                          Container(
                            height: 200.0,
                            child: LeaveHistoryScreen(),
                          ),
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const Result(), // Navigate to the Result page
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Result',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromRGBO(
                                          99, 132, 199, 1), // Button color
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 40.0,
                                          vertical: 12.0), // Button padding
                                      textStyle: TextStyle(
                                        fontSize: 16.0, // Text size
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Add functionality for "Change Mpin" button here
                                },
                                child: Text(
                                  'Change Mpin',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color.fromRGBO(
                                      99, 132, 199, 1), // Button color
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 40.0,
                                      vertical: 12.0), // Button padding
                                  textStyle: TextStyle(
                                    fontSize: 16.0, // Text size
                                  ),
                                ),
                              ),
                            ],
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

  Widget _buildProfileDetailField(String title, String value) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                color: const Color.fromARGB(255, 172, 172, 172),
              ),
            ),
          ),
          SizedBox(height: 8.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text(
              value,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 4.0),
          Divider(
            color: Colors.grey[300],
            thickness: 1.0,
          ),
        ],
      ),
    );
  }
}

class ScrollableSkillList extends StatefulWidget {
  @override
  _ScrollableSkillListState createState() => _ScrollableSkillListState();
}

class _ScrollableSkillListState extends State<ScrollableSkillList> {
  final ScrollController _verticalScrollController = ScrollController();
  final ScrollController _horizontalScrollController = ScrollController();

  @override
  void dispose() {
    _verticalScrollController.dispose();
    _horizontalScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollbarTheme(
      data: ScrollbarThemeData(
        thumbColor: WidgetStateProperty.all(Color.fromRGBO(99, 132, 199, 1)),
        thickness: WidgetStateProperty.all(4),
        radius: Radius.circular(5),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 200.0,
        padding: EdgeInsets.all(5.0),
        child: Scrollbar(
          controller: _verticalScrollController,
          thumbVisibility: true,
          child: SingleChildScrollView(
            controller: _verticalScrollController,
            scrollDirection: Axis.vertical,
            child: Scrollbar(
              controller: _horizontalScrollController,
              thumbVisibility: true,
              child: SingleChildScrollView(
                controller: _horizontalScrollController,
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _buildSkillList(),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildSkillList() {
    return [
      _buildSkillText(
          'C programming level 4 - ClearedC programming level 4 - Cleared'),
      SizedBox(height: 3.0),
      _buildSkillText('C programming level 3 - Cleared'),
      SizedBox(height: 3.0),
      _buildSkillText('Python programming level 2 - Cleared'),
      SizedBox(height: 3.0),
      _buildSkillText('C programming level 2 - Cleared'),
      SizedBox(height: 3.0),
      _buildSkillText('Python programming level 4 - Cleared'),
      SizedBox(height: 3.0),
      _buildSkillText('Python programming level 1 - Cleared'),
      SizedBox(height: 3.0),
      _buildSkillText(
          'C programming level 4 - ClearedC programming level 4 - Cleared'),
      SizedBox(height: 3.0),
      _buildSkillText('C programming level 3 - Cleared'),
      SizedBox(height: 3.0),
      _buildSkillText('Python programming level 2 - Cleared'),
      SizedBox(height: 3.0),
      _buildSkillText('C programming level 2 - Cleared'),
      SizedBox(height: 3.0),
      _buildSkillText('Python programming level 4 - Cleared'),
      SizedBox(height: 3.0),
      _buildSkillText('Python programming level 1 - Cleared'),
    ];
  }

  Widget _buildSkillText(String text) {
    return Text(text, style: TextStyle(fontSize: 14.0));
  }
}

class LeaveHistoryScreen extends StatefulWidget {
  @override
  _LeaveHistoryScreenState createState() => _LeaveHistoryScreenState();
}

class _LeaveHistoryScreenState extends State<LeaveHistoryScreen> {
  final ScrollController _verticalScrollController = ScrollController();
  final Map<int, bool> _expandedItems = {};

  @override
  void dispose() {
    _verticalScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ScrollbarTheme(
        data: ScrollbarThemeData(
          thumbColor: WidgetStateProperty.all(Color.fromRGBO(99, 132, 199, 1)),
          thickness: WidgetStateProperty.all(4),
          radius: Radius.circular(5),
        ),
        child: Column(
          children: [
            Expanded(
              child: Scrollbar(
                controller: _verticalScrollController,
                thumbVisibility: true,
                child: SingleChildScrollView(
                  controller: _verticalScrollController,
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _buildLeaveHistoryList(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildLeaveHistoryList() {
    final leaveHistories = [
      LeaveHistory(
        title: 'Sick Leave',
        fromDate: '01 Sep 2023',
        toDate: '03 Sep 2023',
        reason: 'Fever and cold',
        status: 'Approved',
      ),
      LeaveHistory(
        title: 'Internal OD',
        fromDate: '10 Aug 2023',
        toDate: '12 Aug 2023',
        reason: 'College technical',
        status: 'Pending',
      ),
      LeaveHistory(
        title: 'Special Permission',
        fromDate: '15 Jul 2023',
        toDate: '17 Jul 2023',
        reason: 'Personal work',
        status: 'Declined',
      ),
    ];

    return leaveHistories.asMap().entries.map((entry) {
      final index = entry.key;
      final leaveHistory = entry.value;
      return GestureDetector(
        onTap: () {
          setState(() {
            _expandedItems[index] = !(_expandedItems[index] ?? false);
          });
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          margin: const EdgeInsets.symmetric(vertical: 2.0),
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                leaveHistory.title,
                style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 2.0),
              Text(
                'From: ${leaveHistory.fromDate} - To: ${leaveHistory.toDate}',
                style: TextStyle(fontSize: 13.0),
              ),
              if (_expandedItems[index] ?? false) ...[
                SizedBox(height: 4.0),
                Text(
                  'Reason: ${leaveHistory.reason}',
                  style: TextStyle(fontSize: 13.0),
                ),
                SizedBox(height: 2.0),
                Text(
                  'Status: ${leaveHistory.status}',
                  style: TextStyle(
                    fontSize: 13.0,
                    color: _getStatusColor(leaveHistory.status),
                  ),
                ),
              ],
            ],
          ),
        ),
      );
    }).toList();
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Approved':
        return Colors.green;
      case 'Pending':
        return Colors.orange;
      case 'Declined':
        return Colors.red;
      default:
        return Colors.black;
    }
  }
}

class LeaveHistory {
  final String title;
  final String fromDate;
  final String toDate;
  final String reason;
  final String status;

  LeaveHistory({
    required this.title,
    required this.fromDate,
    required this.toDate,
    required this.reason,
    required this.status,
  });
}
