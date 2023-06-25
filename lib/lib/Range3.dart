import 'package:flutter/material.dart';

import 'main2.dart';

class Rangetime extends StatefulWidget {
  @override
  _Rangetime createState() => _Rangetime();
}

class _Rangetime extends State<Rangetime> {
  List<List<bool>> cellStates = List.generate(
    9,
        (index) => List.generate(3, (index) => false),
  );

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
                '안되는 시간 선택',
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
            onPressed: () {},
          ),
        ],
      ),
      body: Row(
        children: [
          SizedBox(
            width: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text('9am', style: TextStyle(fontSize: 18)),
                SizedBox(height: 40),
                Text('10am', style: TextStyle(fontSize: 18)),
                SizedBox(height: 50),
                Text('11am', style: TextStyle(fontSize: 18)),
                SizedBox(height: 50),
                Text('12pm', style: TextStyle(fontSize: 18)),
                SizedBox(height: 50),
                Text('1pm', style: TextStyle(fontSize: 18)),
                SizedBox(height: 50),
                Text('2pm', style: TextStyle(fontSize: 18)),
                SizedBox(height: 50),
                Text('3pm', style: TextStyle(fontSize: 18)),
                SizedBox(height: 50),
                Text('4pm', style: TextStyle(fontSize: 18)),
                SizedBox(height: 50),
                Text('5pm', style: TextStyle(fontSize: 18)),
                SizedBox(height: 50),
                Text('6pm', style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.5,
              ),
              itemCount: 9 * 3,
              itemBuilder: (BuildContext context, int index) {
                int row = index ~/ 3;
                int column = index % 3;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      cellStates[row][column] = !cellStates[row][column];
                    });
                  },
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: cellStates[row][column] ? Colors.red.withOpacity(0.5) : Colors.white,
                      border: Border.all(),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  Rangetime3()),//그루비룸 메인으로 연결해주기
          );},
        tooltip: 'Increment',
        child: Text("확정"),
      ),
    );
  }
}




class Rangetime3 extends StatefulWidget {
  @override
  _Rangetime3State createState() => _Rangetime3State();
}

class _Rangetime3State extends State<Rangetime3> {
  List<List<bool>> cellStates = List.generate(
    9,
        (index) => List.generate(3, (index) => false),
  );

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
                '안되는 시간 선택',
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
            onPressed: () {},
          ),
        ],
      ),
      body: Row(
        children: [
          SizedBox(
            width: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text('9am', style: TextStyle(fontSize: 18)),
                SizedBox(height: 40),
                Text('10am', style: TextStyle(fontSize: 18)),
                SizedBox(height: 50),
                Text('11am', style: TextStyle(fontSize: 18)),
                SizedBox(height: 50),
                Text('12pm', style: TextStyle(fontSize: 18)),
                SizedBox(height: 50),
                Text('1pm', style: TextStyle(fontSize: 18)),
                SizedBox(height: 50),
                Text('2pm', style: TextStyle(fontSize: 18)),
                SizedBox(height: 50),
                Text('3pm', style: TextStyle(fontSize: 18)),
                SizedBox(height: 50),
                Text('4pm', style: TextStyle(fontSize: 18)),
                SizedBox(height: 50),
                Text('5pm', style: TextStyle(fontSize: 18)),
                SizedBox(height: 50),
                Text('6pm', style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.5,
              ),
              itemCount: 9 * 3,
              itemBuilder: (BuildContext context, int index) {
                int row = index ~/ 3;
                int column = index % 3;
                return GestureDetector(
                  onTap: () {
                    if (row == 1 && column == 0) {
                      // Navigate to another page when specific cell is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    } else {
                      setState(() {
                        cellStates[row][column] = !cellStates[row][column];
                      });
                    }
                  },
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: cellStates[row][column]
                          ? Colors.green.withOpacity(0.5)
                          : Colors.white,
                      border: Border.all(),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // Set specific cells to green
            cellStates[1][0] = true;
            cellStates[2][0] = true;
            cellStates[3][1] = true;
            cellStates[3][2] = true;
            cellStates[4][1] = true;
            cellStates[5][1] = true;
            cellStates[6][1] = true;
          });
        },
        tooltip: 'Mark Cells',
        child: Text("확정"),
      ),
    );
  }
}
