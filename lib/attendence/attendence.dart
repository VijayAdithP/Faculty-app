import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_check_box_rounded/flutter_check_box_rounded.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:table_calendar/table_calendar.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  final List<DateTime> presentDays = [
    DateTime.utc(2023, 9, 18),
    DateTime.utc(2023, 9, 20),
    DateTime.utc(2023, 9, 22),
  ];

  final List<DateTime> absentDays = [
    DateTime.utc(2023, 9, 19),
    DateTime.utc(2023, 9, 21),
    DateTime.utc(2023, 9, 23),
  ];

  void SelectedDate(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      today = selectedDay;
    });
  }

  bool isSameDay(DateTime? a, DateTime? b) {
    if (a == null || b == null) return false;
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }

  TimeOfDay selectedStartTime = TimeOfDay.now();
  TimeOfDay selectedendTime = TimeOfDay.now();
  void startcalender() async {
    DateTime? pickedDate = await showDialog<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SfDateRangePicker(
                  view: DateRangePickerView.month,
                  selectionMode: DateRangePickerSelectionMode.single,
                  initialSelectedDate: selectedStartDate,
                  onSelectionChanged:
                      (DateRangePickerSelectionChangedArgs args) {
                    Navigator.of(context).pop(args.value);
                  },
                  todayHighlightColor: const Color.fromARGB(255, 178, 187, 236),
                  backgroundColor: Colors.white,
                  selectionTextStyle: const TextStyle(
                    color: Color.fromARGB(255, 178, 187, 236),
                    fontWeight: FontWeight.bold,
                  ),
                  selectionColor: const Color.fromARGB(255, 178, 187, 236),
                  monthCellStyle: const DateRangePickerMonthCellStyle(
                    todayTextStyle: TextStyle(
                      color: Color.fromARGB(255, 178, 187, 236),
                      fontWeight: FontWeight.bold,
                    ),
                    textStyle: TextStyle(
                      color: Color.fromARGB(255, 178, 187, 236),
                    ),
                  ),
                  headerStyle: const DateRangePickerHeaderStyle(
                    backgroundColor: Color.fromARGB(255, 178, 187, 236),
                    textStyle: TextStyle(
                      color: Color.fromARGB(255, 178, 187, 236),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  monthViewSettings: const DateRangePickerMonthViewSettings(
                    viewHeaderStyle: DateRangePickerViewHeaderStyle(
                      textStyle: TextStyle(
                        color: Color.fromARGB(255, 178, 187, 236),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );

    if (pickedDate != null) {
      setState(() {
        selectedStartDate = pickedDate;
      });
    }
  }

  void endcalender() async {
    DateTime? pickedDate = await showDialog<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SfDateRangePicker(
                  view: DateRangePickerView.month,
                  selectionMode: DateRangePickerSelectionMode.single,
                  initialSelectedDate: selectedendDate,
                  onSelectionChanged:
                      (DateRangePickerSelectionChangedArgs args) {
                    Navigator.of(context).pop(args.value);
                  },
                  todayHighlightColor: const Color.fromARGB(255, 178, 187, 236),
                  backgroundColor: Colors.white,
                  selectionTextStyle: const TextStyle(
                    color: Color.fromARGB(255, 178, 187, 236),
                    fontWeight: FontWeight.bold,
                  ),
                  selectionColor: const Color.fromARGB(255, 178, 187, 236),
                  monthCellStyle: const DateRangePickerMonthCellStyle(
                    todayTextStyle: TextStyle(
                      color: Color.fromARGB(255, 178, 187, 236),
                      fontWeight: FontWeight.bold,
                    ),
                    textStyle: TextStyle(
                      color: Color.fromARGB(255, 178, 187, 236),
                    ),
                  ),
                  headerStyle: const DateRangePickerHeaderStyle(
                    backgroundColor: Color.fromARGB(255, 178, 187, 236),
                    textStyle: TextStyle(
                      color: Color.fromARGB(255, 178, 187, 236),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  monthViewSettings: const DateRangePickerMonthViewSettings(
                    viewHeaderStyle: DateRangePickerViewHeaderStyle(
                      textStyle: TextStyle(
                        color: Color.fromARGB(255, 178, 187, 236),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );

    if (pickedDate != null) {
      setState(() {
        selectedendDate = pickedDate;
      });
    }
  }

  int selectedIndex = 0;
  int _selectedValue = 0;
  DateTime today = DateTime.now();
  DateTime absentdate = DateTime.now().subtract(
    const Duration(days: 1),
  );

  int? selectedRole;
  TextEditingController descriptionController = TextEditingController();
  TextEditingController activityIdController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  DateTime selectedStartDate = DateTime.now();
  DateTime selectedendDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/WhatsApp Image 2024-09-11 at 14.17.16_5ce8e650.jpg',
              ),
              fit: BoxFit.fill,
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
                      // InkWell(
                      //   onTap: () {
                      //     Navigator.of(context).pop();
                      //   },
                      //   child: const Icon(
                      //     Icons.arrow_back_ios,
                      //     size: 30,
                      //     color: Colors.white,
                      //   ),
                      // ),
                      // const SizedBox(
                      //   width: 10,
                      // ),
                      // CupertinoSlidingSegmentedControl<String>(
                      //   backgroundColor: Colors.blue[200]!,
                      //   thumbColor: Colors.white,
                      //   groupValue: _selectedValue,
                      //   padding: const EdgeInsets.all(4),
                      //   children: {
                      //     'Attendance': Text(
                      //       'ATTENDANCE',
                      //       style: TextStyle(
                      //         color: _selectedValue == 'Attendance'
                      //             ? Colors.blue
                      //             : Colors.white,
                      //         fontWeight: FontWeight.bold,
                      //       ),
                      //     ),
                      //     'Holiday': Text(
                      //       'HOLIDAY',
                      //       style: TextStyle(
                      //         color: _selectedValue == 'Holiday'
                      //             ? Colors.blue
                      //             : Colors.white,
                      //         fontWeight: FontWeight.bold,
                      //       ),
                      //     ),
                      //     'Leave Apply': Text(
                      //       'Leave Apply',
                      //       style: TextStyle(
                      //         color: _selectedValue == 'leave apply'
                      //             ? Colors.blue
                      //             : Colors.white,
                      //         fontWeight: FontWeight.bold,
                      //       ),
                      //     ),
                      //   },
                      //   onValueChanged: (value) {
                      //     setState(() {
                      //       _selectedValue = value;
                      //     });
                      //   },
                      // ),
                      CustomSlidingSegmentedControl<int>(
                        initialValue: 0,
                        children: {
                          0: Text(
                            'Attendance',
                            style: TextStyle(
                              color: _selectedValue == 0
                                  ? HexColor("#5c7ab5")
                                  : Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          1: Text(
                            'Holiday',
                            style: TextStyle(
                              color: _selectedValue == 1
                                  ? HexColor("#5c7ab5")
                                  : Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          2: Text(
                            'Leave Apply',
                            style: TextStyle(
                              color: _selectedValue == 2
                                  ? HexColor("#5c7ab5")
                                  : Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        },
                        decoration: BoxDecoration(
                          color: HexColor("#879fce"),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        thumbDecoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.easeInToLinear,
                        onValueChanged: (value) {
                          setState(() {
                            _selectedValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 9,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                      image: DecorationImage(
                        alignment: Alignment.bottomCenter,
                        fit: BoxFit.fitWidth,
                        opacity: _selectedValue == 1 ? 1 : 0.3,
                        image: const AssetImage(
                          "assets/images/background_leaves.png",
                        ),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          _selectedValue == 0
                              ? Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                  ),
                                  child: Column(
                                    children: [
                                      TableCalendar(
                                        selectedDayPredicate: (day) =>
                                            isSameDay(day, today),
                                        onDaySelected:
                                            (selectedDay, focusedDay) {},
                                        calendarFormat: CalendarFormat.month,
                                        headerStyle: const HeaderStyle(
                                          titleCentered: true,
                                          formatButtonVisible: false,
                                        ),
                                        rowHeight: 50,
                                        focusedDay: today,
                                        firstDay: DateTime.utc(2020, 12, 01),
                                        lastDay: DateTime.utc(2030, 3, 1),
                                        startingDayOfWeek:
                                            StartingDayOfWeek.monday,
                                        calendarBuilders: CalendarBuilders(
                                          defaultBuilder:
                                              (context, day, focusedDay) {
                                            if (day.weekday ==
                                                DateTime.sunday) {
                                              return Center(
                                                child: Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Color.fromARGB(
                                                        255, 178, 187, 236),
                                                  ),
                                                  width: 35,
                                                  height: 35,
                                                  child: Center(
                                                    child: Text(
                                                      day.day.toString(),
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }

                                            if (absentDays.any((absentDay) =>
                                                isSameDay(absentDay, day))) {
                                              return Center(
                                                child: Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.red,
                                                  ),
                                                  width: 35,
                                                  height: 35,
                                                  child: Center(
                                                    child: Text(
                                                      day.day.toString(),
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }

                                            if (presentDays.any((presentDay) =>
                                                isSameDay(presentDay, day))) {
                                              return Center(
                                                child: Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.green,
                                                  ),
                                                  width: 35,
                                                  height: 35,
                                                  child: Center(
                                                    child: Text(
                                                      day.day.toString(),
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }

                                            return Center(
                                              child: Text(day.day.toString()),
                                            );
                                          },
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 50,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.red, width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    "Absent",
                                                    style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 10),
                                                  child: Container(
                                                    height: 35,
                                                    width: 35,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.red
                                                          .withOpacity(0.1),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        absentDays.length
                                                            .toString(),
                                                        style: const TextStyle(
                                                          color: Colors.red,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 15),
                                          Container(
                                            height: 50,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.green,
                                                  width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    "Present",
                                                    style: TextStyle(
                                                      color: Colors.green,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 10),
                                                  child: Container(
                                                    width: 35,
                                                    height: 35,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.green
                                                          .withOpacity(0.1),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        presentDays.length
                                                            .toString(),
                                                        style: const TextStyle(
                                                          color: Colors.green,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 10,
                                            ),
                                            child: Text(
                                              "Daily Attendance:",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 10,
                                              vertical: 20,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      'AM',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16),
                                                    ),
                                                    SizedBox(width: 100),
                                                    Text(
                                                      'FN',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16),
                                                    ),
                                                    SizedBox(
                                                      width: 60,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                AttendanceRow(label: 'Mentor'),
                                                SizedBox(height: 20),
                                                AttendanceRow(
                                                    label: 'Biometric'),
                                                SizedBox(height: 20),
                                                AttendanceRow(
                                                    label: 'Placement'),
                                                SizedBox(height: 20),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'Overall',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 1,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          CheckBoxRounded(),
                                                          Text(
                                                            "Present",
                                                            style: TextStyle(
                                                              fontSize: 18,
                                                              color:
                                                                  Colors.green,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(width: 60),
                                                  ],
                                                )
                                                // Padding(
                                                //   padding:
                                                //       const EdgeInsets.symmetric(
                                                //     vertical: 20,
                                                //   ),
                                                //   child: Column(
                                                //     crossAxisAlignment:
                                                //         CrossAxisAlignment.start,
                                                //     children: [
                                                //       Row(
                                                //         mainAxisAlignment:
                                                //             MainAxisAlignment
                                                //                 .spaceBetween,
                                                //         children: [
                                                //           Text(
                                                //             DateFormat(
                                                //                     'dd.MM.yyyy')
                                                //                 .format(today),
                                                //             style:
                                                //                 const TextStyle(
                                                //               fontSize: 13,
                                                //               color: Colors.black,
                                                //             ),
                                                //           ),
                                                //           Row(
                                                //             children: [
                                                //               const Text(
                                                //                 "Overall Attendance:",
                                                //                 style: TextStyle(
                                                //                   fontSize: 16,
                                                //                   color: Colors
                                                //                       .black,
                                                //                 ),
                                                //               ),
                                                //               const SizedBox(
                                                //                 width: 10,
                                                //               ),
                                                //               CheckBoxRounded(
                                                //                 onTap: (bool?
                                                //                     value) {},
                                                //               ),
                                                //               const SizedBox(
                                                //                 width: 70,
                                                //               ),
                                                //             ],
                                                //           )
                                                //         ],
                                                //       ),
                                                //       const SizedBox(height: 10),
                                                //       Row(
                                                //         mainAxisAlignment:
                                                //             MainAxisAlignment
                                                //                 .spaceBetween,
                                                //         children: [
                                                //           CheckBoxRounded(
                                                //             onTap:
                                                //                 (bool? value) {},
                                                //           ),
                                                //           const SizedBox(
                                                //               width: 60),
                                                //           CheckBoxRounded(
                                                //             onTap:
                                                //                 (bool? value) {},
                                                //           ),
                                                //           const SizedBox(
                                                //               width: 60),
                                                //           CheckBoxRounded(
                                                //             onTap:
                                                //                 (bool? value) {},
                                                //           ),
                                                //           const SizedBox(
                                                //               width: 50),
                                                // CheckBoxRounded(
                                                //   onTap:
                                                //       (bool? value) {},
                                                // ),
                                                //           const SizedBox(
                                                //               width: 40),
                                                //           const Text(
                                                //             "FN",
                                                //             style: TextStyle(
                                                //               fontSize: 16,
                                                //             ),
                                                //           )
                                                //         ],
                                                //       ),
                                                //       const SizedBox(height: 10),
                                                //       Row(
                                                //         mainAxisAlignment:
                                                //             MainAxisAlignment
                                                //                 .spaceBetween,
                                                //         children: [
                                                //           CheckBoxRounded(
                                                //             onTap:
                                                //                 (bool? value) {},
                                                //           ),
                                                //           const SizedBox(
                                                //               width: 60),
                                                //           CheckBoxRounded(
                                                //             onTap:
                                                //                 (bool? value) {},
                                                //           ),
                                                //           const SizedBox(
                                                //               width: 60),
                                                //           CheckBoxRounded(
                                                //             onTap:
                                                //                 (bool? value) {},
                                                //           ),
                                                //           const SizedBox(
                                                //               width: 50),
                                                //           CheckBoxRounded(
                                                //             onTap:
                                                //                 (bool? value) {},
                                                //           ),
                                                //           const SizedBox(
                                                //               width: 40),
                                                //           const Text(
                                                //             "AN",
                                                //             style: TextStyle(
                                                //               fontSize: 16,
                                                //             ),
                                                //           )
                                                //         ],
                                                //       ),
                                                //     ],
                                                //   ),
                                                // ),
                                                // Padding(
                                                //   padding:
                                                //       const EdgeInsets.symmetric(
                                                //     vertical: 20,
                                                //   ),
                                                //   child: Column(
                                                //     crossAxisAlignment:
                                                //         CrossAxisAlignment.start,
                                                //     children: [
                                                //       Row(
                                                //         mainAxisAlignment:
                                                //             MainAxisAlignment
                                                //                 .spaceBetween,
                                                //         children: [
                                                //           Text(
                                                //             DateFormat(
                                                //                     'dd.MM.yyyy')
                                                //                 .format(today),
                                                //             style:
                                                //                 const TextStyle(
                                                //               fontSize: 13,
                                                //               color: Colors.black,
                                                //             ),
                                                //           ),
                                                //           Row(
                                                //             children: [
                                                //               const Text(
                                                //                 "Overall Attendance:",
                                                //                 style: TextStyle(
                                                //                   fontSize: 16,
                                                //                   color: Colors
                                                //                       .black,
                                                //                 ),
                                                //               ),
                                                //               const SizedBox(
                                                //                 width: 10,
                                                //               ),
                                                //               CheckBoxRounded(
                                                //                 onTap: (bool?
                                                //                     value) {},
                                                //               ),
                                                //               const SizedBox(
                                                //                 width: 70,
                                                //               ),
                                                //             ],
                                                //           )
                                                //         ],
                                                //       ),
                                                //       const SizedBox(height: 10),
                                                //       Row(
                                                //         mainAxisAlignment:
                                                //             MainAxisAlignment
                                                //                 .spaceBetween,
                                                //         children: [
                                                //           CheckBoxRounded(
                                                //             onTap:
                                                //                 (bool? value) {},
                                                //           ),
                                                //           const SizedBox(
                                                //               width: 60),
                                                //           CheckBoxRounded(
                                                //             onTap:
                                                //                 (bool? value) {},
                                                //           ),
                                                //           const SizedBox(
                                                //               width: 60),
                                                //           CheckBoxRounded(
                                                //             onTap:
                                                //                 (bool? value) {},
                                                //           ),
                                                //           const SizedBox(
                                                //               width: 50),
                                                //           CheckBoxRounded(
                                                //             onTap:
                                                //                 (bool? value) {},
                                                //           ),
                                                //           const SizedBox(
                                                //               width: 40),
                                                //           const Text(
                                                //             "FN",
                                                //             style: TextStyle(
                                                //               fontSize: 16,
                                                //             ),
                                                //           )
                                                //         ],
                                                //       ),
                                                //       const SizedBox(height: 10),
                                                //       Row(
                                                //         mainAxisAlignment:
                                                //             MainAxisAlignment
                                                //                 .spaceBetween,
                                                //         children: [
                                                //           CheckBoxRounded(
                                                //             onTap:
                                                //                 (bool? value) {},
                                                //           ),
                                                //           const SizedBox(
                                                //               width: 60),
                                                //           CheckBoxRounded(
                                                //             onTap:
                                                //                 (bool? value) {},
                                                //           ),
                                                //           const SizedBox(
                                                //               width: 60),
                                                //           CheckBoxRounded(
                                                //             onTap:
                                                //                 (bool? value) {},
                                                //           ),
                                                //           const SizedBox(
                                                //               width: 50),
                                                //           CheckBoxRounded(
                                                //             onTap:
                                                //                 (bool? value) {},
                                                //           ),
                                                //           const SizedBox(
                                                //               width: 40),
                                                //           const Text(
                                                //             "AN",
                                                //             style: TextStyle(
                                                //               fontSize: 16,
                                                //             ),
                                                //           )
                                                //         ],
                                                //       ),
                                                //     ],
                                                //   ),
                                                // )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              : _selectedValue == 1
                                  ? Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 15,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TableCalendar(
                                            calendarFormat:
                                                CalendarFormat.month,
                                            headerStyle: const HeaderStyle(
                                              titleCentered: true,
                                              formatButtonVisible: false,
                                            ),
                                            rowHeight: 50,
                                            focusedDay: today,
                                            firstDay:
                                                DateTime.utc(2020, 12, 01),
                                            lastDay: DateTime.utc(2030, 3, 1),
                                            startingDayOfWeek:
                                                StartingDayOfWeek.monday,
                                            calendarBuilders: CalendarBuilders(
                                              defaultBuilder:
                                                  (context, day, focusedDay) {
                                                if (day.weekday ==
                                                    DateTime.sunday) {
                                                  return Center(
                                                    child: Container(
                                                      decoration:
                                                          const BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Color.fromARGB(
                                                            255, 178, 187, 236),
                                                      ),
                                                      width: 35,
                                                      height: 35,
                                                      child: Center(
                                                        child: Text(
                                                          day.day.toString(),
                                                          style:
                                                              const TextStyle(
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                return null;
                                              },
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.symmetric(
                                              vertical: 10,
                                            ),
                                            child: Text(
                                              "List Of Holidays",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.sizeOf(context)
                                                .width,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.38,
                                            child: Expanded(
                                              child: ListView.builder(
                                                  itemCount: 10,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        vertical: 10,
                                                      ),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          border: Border.all(
                                                            width: 1,
                                                            color:
                                                                Colors.black38,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        child: const Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                            16,
                                                          ),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "Govardhan Puja"),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      "14th November"),
                                                                  Text(
                                                                      "Saturday")
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 25,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 40,
                                          ),
                                          const Text("Leave Type"),
                                          DropdownButton<int>(
                                            icon: const Visibility(
                                                visible: false,
                                                child:
                                                    Icon(Icons.arrow_downward)),
                                            underline: const SizedBox(),
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(15),
                                            ),
                                            dropdownColor: Colors.white,
                                            style: const TextStyle(
                                              fontSize: 17,
                                              color: Colors.white,
                                            ),
                                            isExpanded: true,
                                            value: selectedRole,
                                            elevation: 1,
                                            onChanged: (int? newValue) {
                                              setState(() {
                                                selectedRole = newValue;
                                              });
                                            },
                                            items: const <DropdownMenuItem<
                                                int>>[
                                              DropdownMenuItem<int>(
                                                value: 1,
                                                child: Text(
                                                  'Leave',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              DropdownMenuItem<int>(
                                                value: 2,
                                                child: Text(
                                                  'Emergency Leave',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              DropdownMenuItem<int>(
                                                value: 3,
                                                child: Text(
                                                  'On Duty',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              DropdownMenuItem<int>(
                                                value: 4,
                                                child: Text(
                                                  'Internal OD',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              DropdownMenuItem<int>(
                                                value: 5,
                                                child: Text(
                                                  'GP',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              DropdownMenuItem<int>(
                                                value: 6,
                                                child: Text(
                                                  'Internal Training',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              DropdownMenuItem<int>(
                                                value: 7,
                                                child: Text(
                                                  'Sick Leave',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const Divider(),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          const Text("Date"),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 20,
                                            ),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  GestureDetector(
                                                    onTap: startcalender,
                                                    child: Container(
                                                      height: 40,
                                                      width: 150,
                                                      decoration: BoxDecoration(
                                                        color: Colors.grey[200],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              DateFormat(
                                                                      'yyyy-MM-dd')
                                                                  .format(
                                                                      selectedStartDate)
                                                                  .toString(),
                                                            ),
                                                            const Icon(
                                                              Icons
                                                                  .calendar_month,
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const Icon(
                                                    Icons.arrow_forward_rounded,
                                                    size: 40,
                                                  ),
                                                  GestureDetector(
                                                    onTap: endcalender,
                                                    child: Container(
                                                      height: 40,
                                                      width: 150,
                                                      decoration: BoxDecoration(
                                                        color: Colors.grey[200],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              DateFormat(
                                                                      'yyyy-MM-dd')
                                                                  .format(
                                                                      selectedendDate)
                                                                  .toString(),
                                                            ),
                                                            const Icon(
                                                              Icons
                                                                  .calendar_month,
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                          const Divider(),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          const Text("Description"),
                                          TextField(
                                            textInputAction:
                                                TextInputAction.done,
                                            maxLines: null,
                                            style: const TextStyle(
                                              fontSize: 14,
                                            ),
                                            controller: descriptionController,
                                            decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                            ),
                                          ),
                                          const Divider(),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          const Text("Activity Id"),
                                          TextField(
                                            textInputAction:
                                                TextInputAction.done,
                                            maxLines: null,
                                            style: const TextStyle(
                                              fontSize: 14,
                                            ),
                                            controller: activityIdController,
                                            decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                            ),
                                          ),
                                          const Divider(),
                                          if (selectedRole == 3) ...[
                                            const Text('Location'),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  // color: Colors.black,
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.76,
                                                  child: TextField(
                                                    textInputAction:
                                                        TextInputAction.done,
                                                    maxLines: null,
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                    ),
                                                    controller:
                                                        locationController,
                                                    decoration:
                                                        const InputDecoration(
                                                      border: InputBorder.none,
                                                      focusedBorder:
                                                          InputBorder.none,
                                                      enabledBorder:
                                                          InputBorder.none,
                                                      errorBorder:
                                                          InputBorder.none,
                                                      disabledBorder:
                                                          InputBorder.none,
                                                    ),
                                                  ),
                                                ),
                                                IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                      Icons.location_on),
                                                ),
                                              ],
                                            ),
                                            const Divider(),
                                            const SizedBox(height: 10),
                                            const Text('Working Time'),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: [
                                                const Text("From :"),
                                                GestureDetector(
                                                  onTap: () async {
                                                    final TimeOfDay?
                                                        staretimeofday =
                                                        await showTimePicker(
                                                      context: context,
                                                      initialTime:
                                                          selectedStartTime,
                                                      initialEntryMode:
                                                          TimePickerEntryMode
                                                              .dial,
                                                    );
                                                    if (staretimeofday !=
                                                        null) {
                                                      setState(() {
                                                        selectedStartTime =
                                                            staretimeofday;
                                                      });
                                                    }
                                                  },
                                                  child: Container(
                                                    height: 40,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Colors.transparent,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "${selectedStartTime.hour}:${selectedStartDate.minute}",
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const Expanded(
                                                  child: SizedBox(
                                                    child: Icon(
                                                      Icons
                                                          .arrow_forward_rounded,
                                                      size: 40,
                                                    ),
                                                  ),
                                                ),
                                                const Text("To :"),
                                                GestureDetector(
                                                  onTap: () async {
                                                    final TimeOfDay?
                                                        endtimeofday =
                                                        await showTimePicker(
                                                      context: context,
                                                      initialTime:
                                                          selectedStartTime,
                                                      initialEntryMode:
                                                          TimePickerEntryMode
                                                              .dial,
                                                    );
                                                    if (endtimeofday != null) {
                                                      setState(() {
                                                        selectedendTime =
                                                            endtimeofday;
                                                      });
                                                    }
                                                  },
                                                  child: Container(
                                                    height: 40,
                                                    decoration:
                                                        const BoxDecoration(
                                                      border: Border(),
                                                      color: Colors.transparent,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "${selectedendTime.hour}:${selectedendDate.minute}",
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Divider(),
                                          ],
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 20,
                                            ),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                  .width,
                                              padding:
                                                  const EdgeInsets.symmetric(
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
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: const Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Submit",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.symmetric(
                                              vertical: 10,
                                            ),
                                            child: Text(
                                              "List Of Holidays",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.sizeOf(context)
                                                .width,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.38,
                                            child: Expanded(
                                              child: ListView.builder(
                                                  itemCount: 10,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        vertical: 10,
                                                      ),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          border: Border.all(
                                                            width: 1,
                                                            color:
                                                                Colors.black38,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        child: const Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                            16,
                                                          ),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "Govardhan Puja"),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      "14th November"),
                                                                  Text(
                                                                      "Saturday")
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }),
                                            ),
                                          ),
                                        ],
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
      ),
    );
  }
}

class AttendanceRow extends StatelessWidget {
  final String label;

  const AttendanceRow({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CheckBoxRounded(),
              CheckBoxRounded(),
            ],
          ),
        ),
        const SizedBox(width: 60),
      ],
    );
  }
}
