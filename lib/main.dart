import 'package:flutter/material.dart';
import 'package:profile_app2/pages/profile_page.dart';
import 'package:profile_app2/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: ProfilePage(),
    );
  }
}
