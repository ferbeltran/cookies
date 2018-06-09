import 'package:flutter/material.dart';
import 'tabs/homepage.dart';

void main() {
  runApp(CookiesApp());
}

class CookiesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cookies & More',
      theme: ThemeData(
        primaryColor: Colors.purple,
        
      ),
      home: HomePage(),
    );
  }
}

