import 'package:flutter/material.dart';

class TimeTablePage0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calendar App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalendarPage(),
    );
  }
}

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  late DateTime _startDate;
  late DateTime _endDate;
  List<String> _selectedTimeSlots = [];

  void _selectDateRange(DateTime start, DateTime end) {
    setState(() {
      _startDate = start;
      _endDate = end;
    });
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TimeTablePage(
          startDate: _startDate,
          endDate: _endDate,
          selectedTimeSlots: _selectedTimeSlots,
        ),
      ),
    ).then((value) {
      if (value != null && value is List<String>) {
        setState(() {
          _selectedTimeSlots = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar App'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2023),
              lastDate: DateTime(2024),
            ).then((selectedStartDate) {
              if (selectedStartDate != null) {
                showDatePicker(
                  context: context,
                  initialDate: selectedStartDate,
                  firstDate: selectedStartDate,
                  lastDate: DateTime(2024),
                ).then((selectedEndDate) {
                  if (selectedEndDate != null) {
                    _selectDateRange(selectedStartDate, selectedEndDate);
                  }
                });
              }
            });
          },
          child: Text(
            'Select Date Range',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}

class TimeTablePage extends StatefulWidget {
  final DateTime startDate;
  final DateTime endDate;
  final List<String> selectedTimeSlots;

  TimeTablePage({
    required this.startDate,
    required this.endDate,
    required this.selectedTimeSlots,
  });

  @override
  _TimeTablePageState createState() => _TimeTablePageState();
}

class _TimeTablePageState extends State<TimeTablePage> {
  List<List<bool>> _isTimeSlotSelected = [];

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1D1647),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '시간매칭',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.menu),
              color: Colors.white,
              onPressed: () {
                // 메뉴 버튼을 눌렀을 때 수행할 작업
              },
            ),
          ],
        ),
        body: Column(children: [
          Row(
            children: [
              Text(
                "안되는 시간 선택",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          )
        ]));
  }
}
