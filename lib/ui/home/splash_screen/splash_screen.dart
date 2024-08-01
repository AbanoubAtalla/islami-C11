import 'package:flutter/material.dart';
import 'package:islami1/ui/ui_untils.dart';

import '../home_screen.dart';

class splashScreen extends StatelessWidget {
  static const String routeName = "splash";

  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Image.asset(
        getFullPathImage(
          "splash.png",
        ),
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
