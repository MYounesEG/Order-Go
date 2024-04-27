import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:order_go/pages/settings_page.dart';
import 'package:order_go/pages/sign_up.dart';
import 'package:order_go/pages/splash.dart';
import 'package:order_go/pages/start.dart';
import 'package:order_go/pages/homepage.dart';
import 'package:order_go/pages/order_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SettingsPage(),
    );
  }
}

