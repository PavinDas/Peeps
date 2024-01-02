import 'package:flutter/material.dart';
import 'package:peeps/constants/colors.dart';
import 'package:peeps/constants/consts.dart';
import 'package:peeps/responsive/mobile_screen_layout.dart';
import 'package:peeps/responsive/responsive_layout_screen.dart';
import 'package:peeps/responsive/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
      ),
      home: ResponsiveLayout(
        mobileScreenLaout: MobileScreenLayout(),
        webScreenLaout: WebScreenLayout(),
      ),
    );
  }
}
