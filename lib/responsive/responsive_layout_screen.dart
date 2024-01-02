import 'package:flutter/material.dart';
import 'package:peeps/constants/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLaout;
  final Widget mobileScreenLaout;
  const ResponsiveLayout({
    super.key,
    required this.mobileScreenLaout,
    required this.webScreenLaout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webScreenSize) {
          //? Web Screen
          return webScreenLaout;
        }
        //? Mobile Screen
        else {
          return mobileScreenLaout;
        }
      },
    );
  }
}
