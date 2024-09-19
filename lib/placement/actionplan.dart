import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rewardspage/front_page.dart';
import 'package:rewardspage/placement/book.dart';
import 'package:table_calendar/table_calendar.dart'; // Add TableCalendar package

// void main() {
//   runApp(ActionPlan());
// }

// class ActionPlan extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: FullScreenImageWithText(),
//     );
//   }
// }

class FullScreenImageWithText extends StatefulWidget {
  @override
  _FullScreenImageWithTextState createState() =>
      _FullScreenImageWithTextState();
}

class _FullScreenImageWithTextState extends State<FullScreenImageWithText> {
  // State variables to track checkbox selection
  bool _cProgramming = false;
  bool _python = false;
  bool _java = false;
  bool _uiUx = false;

  // Calendar selected day
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  // Status counts
  int _notCompletedCount = 2;
  int _completedCount = 1;
  int _upcomingCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Full-screen background image
          Positioned.fill(
            child: Image.asset(
              "assets/images/WhatsApp Image 2024-09-11 at 14.17.16_5ce8e650.jpg", // Path to your local image
              fit: BoxFit.cover, // Scale the image to fit the container
            ),
          ),
          // White rectangle with top border radius
          Positioned(
            top: MediaQuery.of(context).size.height * 0.15,
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
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text(
                          'Register Course',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 24.0,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      SizedBox(height: 24.0),

                      // Course checkboxes
                      CheckboxListTile(
                        value: _cProgramming,
                        onChanged: (bool? value) {
                          setState(() {
                            _cProgramming = value ?? false;
                          });
                        },
                        title: Text(
                          'C Programming',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: EdgeInsets.zero,
                        activeColor: Colors.blue,
                      ),
                      CheckboxListTile(
                        value: _python,
                        onChanged: (bool? value) {
                          setState(() {
                            _python = value ?? false;
                          });
                        },
                        title: Text(
                          'Python',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: EdgeInsets.zero,
                        activeColor: Colors.blue,
                      ),
                      CheckboxListTile(
                        value: _java,
                        onChanged: (bool? value) {
                          setState(() {
                            _java = value ?? false;
                          });
                        },
                        title: Text(
                          'Java',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: EdgeInsets.zero,
                        activeColor: Colors.blue,
                      ),
                      CheckboxListTile(
                        value: _uiUx,
                        onChanged: (bool? value) {
                          setState(() {
                            _uiUx = value ?? false;
                          });
                        },
                        title: Text(
                          'UI/UX',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: EdgeInsets.zero,
                        activeColor: Colors.blue,
                      ),
                      SizedBox(height: 24.0),

                      // Space above the calendar
                      SizedBox(height: 16.0),
                      TableCalendar(
                        firstDay: DateTime.utc(2020, 1, 1),
                        lastDay: DateTime.utc(2030, 12, 31),
                        focusedDay: _focusedDay,
                        selectedDayPredicate: (day) {
                          return isSameDay(_selectedDay, day);
                        },
                        onDaySelected: (selectedDay, focusedDay) {
                          setState(() {
                            _selectedDay = selectedDay;
                            _focusedDay = focusedDay;
                          });
                        },
                        calendarStyle: CalendarStyle(
                          todayDecoration: BoxDecoration(
                            color: Colors.redAccent,
                            shape: BoxShape.circle,
                          ),
                          selectedDecoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                        headerStyle: HeaderStyle(
                          formatButtonVisible: false,
                          titleCentered: true,
                        ),
                      ),
                      SizedBox(
                          height:
                              24.0), // Space between the calendar and container

                      // Task status containers with padding
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          _buildStatusContainer(
                            label: 'Not completed',
                            count: '$_notCompletedCount',
                            color: Colors.red,
                            onTap: () {
                              setState(() {
                                _notCompletedCount++;
                              });
                            },
                          ),
                          SizedBox(height: 16.0), // Space between containers
                          _buildStatusContainer(
                            label: 'Completed',
                            count: '$_completedCount',
                            color: Colors.green,
                            onTap: () {
                              setState(() {
                                _completedCount++;
                              });
                            },
                          ),
                          SizedBox(height: 16.0), // Space between containers
                          _buildStatusContainer(
                            label: 'Upcoming Targets',
                            count: '$_upcomingCount',
                            color: Colors.grey,
                            onTap: () {
                              setState(() {
                                _upcomingCount++;
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 24.0),

                      // Proceed Button
// Proceed Button
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Book()), // Correct usage
                          );
                          // Proceed action logic here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(
                              horizontal: 50.0,
                              vertical: 15.0), // Increased vertical padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: Text(
                          'Proceed -->',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Back icon and text with adjusted spacing
          Positioned(
            top: 60.0, // Adjust as needed
            left: 16.0, // Adjust as needed
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BackgroundImage()),
                    );
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 4.0),
                Text(
                  'Action Plan',
                  style: GoogleFonts.aBeeZee(
                    fontSize: 24.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Build status container
  Widget _buildStatusContainer({
    required String label,
    required String count,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: color.withOpacity(0.1),
          border: Border.all(color: color),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  label,
                  style: TextStyle(
                    color: color,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: 36.0,
                  height: 36.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color.withOpacity(0.3),
                  ),
                  child: Center(
                    child: Text(
                      count,
                      style: TextStyle(
                        color: color,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
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
