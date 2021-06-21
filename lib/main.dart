import 'package:flutter/material.dart';
import 'package:pegimakan/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pegi Makan',
      theme: ThemeData(appBarTheme: AppBarTheme(color: Color(0xFF222432))),
      home: MainScreen(),
    );
  }
}
