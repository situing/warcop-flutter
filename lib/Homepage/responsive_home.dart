import 'package:flutter/material.dart';

class ResponsiveHome extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  const ResponsiveHome({super.key, required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth < 550) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}