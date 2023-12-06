import 'package:edtech_platform/screens/information/user_info/information_user_screen.dart';
import 'package:edtech_platform/screens/information/view/information_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: InformationScreen(),
      ),
    );
  }
}
