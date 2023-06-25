import 'package:flutter/material.dart';
import 'package:projecttogether/lib/roomCreate.dart';
import 'DateRangeSelectionScreen.dart';
import 'Range3.dart';
import 'main.dart';


void main() {
  runApp(MyApp());
}

// 남 0xff1d1647 회 0xffb9b9b9 백 0xffeaeaea
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'calender',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home:LoginPage(),//HomePage(),
        debugShowCheckedModeBanner: false);
  }
}
