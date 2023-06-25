import 'package:flutter/material.dart';
import 'package:projecttogether/lib/main2.dart';

class Rangetime2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Table',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TimeTablePage(),
    );
  }
}

class TimeTablePage extends StatefulWidget {
  @override
  _TimeTablePageState createState() => _TimeTablePageState();
}

class _TimeTablePageState extends State<TimeTablePage> {

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
              // 뒤로 가기 버튼을 눌렀을 때 수행할 작업
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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "안되는 시간 선택",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,MaterialPageRoute(builder: (context) => timetable2())
                        );
                      },
                      child: Text('확정하기',
                          style: TextStyle(fontSize: 20, color: Colors.white)))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/timetable1.png'),

          ],
        ));
  }
}
class timetable2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1D1647),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
              // 뒤로 가기 버튼을 눌렀을 때 수행할 작업
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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "추천시간",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),

                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Text('확정하기',
                          style: TextStyle(fontSize: 20, color: Colors.white)))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/timetable2.png'),

          ],
        ));
  }
}