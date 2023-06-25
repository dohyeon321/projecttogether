import 'package:flutter/material.dart';
import 'package:projecttogether/lib/roomCreate.dart';

import 'Groupin.dart';



class GroupScreen extends StatelessWidget {
  const GroupScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1647),
        title: Text('그룹 생성',
            style: TextStyle(color: Colors.white,)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () {
            // 뒤로가기 버튼을 눌렀을 때의 동작을 추가하세요
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu,color: Colors.white,),
            onPressed: () {
              // 메뉴 버튼을 눌렀을 때의 동작을 추가하세요
              // TODO: 메뉴 버튼을 눌렀을 때의 동작 구현
            },
          ),
        ],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>Roomcreate() ),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(1.5 * 100, 300), // 버튼의 가로 길이를 1.5배로 설정
                backgroundColor: Colors.grey, // 버튼의 배경색을 회색으로 설정
              ),
              child: Text('방 생성하기'),
            ),
            SizedBox(width: 30), // 버튼 사이에 간격 추가
            ElevatedButton(
              onPressed: () {
                // 두 번째 버튼을 눌렀을 때 수행할 작업
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InvitationScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(1.5 * 100, 300), // 버튼의 가로 길이를 1.5배로 설정
                backgroundColor: Colors.grey, // 버튼의 배경색을 회색으로 설정
              ),
              child: Text('초대코드 입력하기'),
            ),
          ],
        ),
      ),
    );
  }
}
