import 'package:app3/view/auth/log_in_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LogInScreen(),
      ),
    );
  }
}
/*
ملحوظات
غير Icon facebook الي png

 */