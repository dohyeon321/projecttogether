import 'package:flutter/material.dart';
import 'CustomDrawerMenu.dart';
import 'calendar.dart';
import 'fourth_page.dart'; // 새로 생성한 파일의 경로를 지정해야 합니다.

class HomePage extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/1.png',
    'assets/2.png',
    'assets/3.png',
    'assets/4.png',
    'assets/rightArrow.png',
  ];

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
              Image.asset(
                'assets/home.png',
                width: 33,
                height: 33,
              ),
              SizedBox(width: 8),
              Text(
                '그루비룸',
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

            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16, top: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // 첫 번째 이미지와 텍스트
                Transform.translate(
                  offset: Offset(10, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          imagePaths[0],
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Me',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15),

                // 두 번째 이미지와 텍스트
                Transform.translate(
                  offset: Offset(10, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          imagePaths[1],
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '하임',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15),

                // 세 번째 이미지와 텍스트
                Transform.translate(
                  offset: Offset(10, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          imagePaths[2],
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '주하',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15),

                // 네 번째 이미지와 텍스트
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FourthPage()), // FourthPage를 호출합니다.
                    );
                  },
                  child: Transform.translate(
                    offset: Offset(10, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            imagePaths[3],
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '도현',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15),

                // 추가된 이미지
                Transform.translate(
                  offset: Offset(80, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          imagePaths[4],
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 55),

// 새로운 행
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 110,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(13),
                      topRight: Radius.circular(13),
                      bottomLeft: Radius.circular(13),
                      bottomRight: Radius.circular(13),
                    ),
                    color: Color.fromRGBO(28, 21, 71, 1),
                  ),
                  child: Center(
                    child: Text(
                      '프로젝트 진행률', // 텍스트 내용을 원하는 내용으로 수정해주세요.
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // 이미지
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Image.asset(
                    'assets/progressBar.png', // 원하는 이미지의 경로를 입력해주세요.
                    width: 350,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),

                // 추가적인 컨텐츠를 원하면 여기에 추가하세요.
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16), // 위와 아래에 16픽셀의 패딩 추가
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(13),
                        topRight: Radius.circular(13),
                        bottomLeft: Radius.circular(13),
                        bottomRight: Radius.circular(13),
                      ),
                      color: Color.fromRGBO(28, 21, 71, 1),
                    ),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          text: '그루비룸',
                          style: TextStyle(
                            color: Color(0xFFFFAA6C), // 텍스트의 색상을 'FFAA6C'로 변경
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                          ),
                          children: [
                            TextSpan(
                              text: '의 일정',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
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

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 이미지
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Image.asset(
                    'assets/calander.png', // 원하는 이미지의 경로를 입력해주세요.
                    width: 350,
                    height: 350,
                    fit: BoxFit.fitHeight,
                  ),
                ),

                // 추가적인 컨텐츠를 원하면 여기에 추가하세요.
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFF1D1647),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  // 첫 번째 부분을 터치했을 때 수행할 작업
                },
                child: Container(
                  color: Color(0xFFEAEAEA),
                  height: 56,
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/Image28.png',
                      width: 30, // 이미지의 너비 설정
                      height: 30, // 이미지의 높이 설정
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>Calendar() ), // FourthPage를 호출합니다.
                  );

                },
                child: Container(
                  height: 56,
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/Image15.png',
                      width: 30, // 이미지의 너비 설정
                      height: 30, // 이미지의 높이 설정
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  // 세 번째 부분을 터치했을 때 수행할 작업
                },
                child: Container(
                  height: 56,
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/Image14.png',
                      width: 30, // 이미지의 너비 설정
                      height: 30, // 이미지의 높이 설정
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
}
