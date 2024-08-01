import 'package:flutter/material.dart';
import 'package:islami1/ui/providers/themeprovider.dart';
import 'package:provider/provider.dart';

import '../ui_untils.dart';

class DefaultScreen extends StatelessWidget {
  Widget body;

  DefaultScreen({required this.body, super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider provider = Provider.of<ThemeProvider>(context);
    bool isDark = provider.isDarkEnabled();

    return Stack(children: [
      Image.asset(
        getFullPathImage(isDark ? "dark_bg.png" : "default_bg.png"),
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
      body
    ]);
  }
}
