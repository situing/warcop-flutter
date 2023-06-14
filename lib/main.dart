import 'package:flutter/material.dart';
import 'package:warcop/Homepage/desktop_body.dart';
import 'package:warcop/Homepage/loginpage.dart';
import 'Homepage/mobile_body.dart';
import 'Homepage/responsive_home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: ResponsiveHome(
      //   mobileBody: MobileBody(),
      //   desktopBody: DesktopBody(),
      // ),
      home: LoginPage(),
    );
  }
}
