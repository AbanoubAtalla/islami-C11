import 'package:flutter/material.dart';
import 'package:islami1/ui/home/hadeth/hadethTab.dart';
import 'package:islami1/ui/home/quran/quranTab.dart';
import 'package:islami1/ui/home/radio/radioTab.dart';
import 'package:islami1/ui/home/sebha/sebhaTab.dart';
import 'package:islami1/ui/home/settings/settingsTab.dart';

import '../them/defaultscreen.dart';
import '../ui_untils.dart';
import 'bottomNavigation.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
        body: Scaffold(
      appBar: AppBar(
        title: Text(getTranslations(context).appTitle,
            style: Theme.of(context).textTheme.titleLarge),
      ),
      body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        items: [
          BottomNavItem(getTranslations(context).quranTab,
              Theme.of(context).colorScheme.primary,
              iconPath: 'icon_quran.png'),
          BottomNavItem(
            getTranslations(context).hadethTab,
            Theme.of(context).colorScheme.primary,
            iconPath: 'icon_hadeth.png',
          ),
          BottomNavItem(
            getTranslations(context).sebhaTab,
            Theme.of(context).colorScheme.primary,
            iconPath: 'icon_sebha.png',
          ),
          BottomNavItem(
            getTranslations(context).radioTab,
            Theme.of(context).colorScheme.primary,
            iconPath: 'icon_radio.png',
          ),
          BottomNavItem(getTranslations(context).settings,
              Theme.of(context).colorScheme.primary,
              mainIcon: Icon(Icons.settings)),
        ],
      ),
    ));
  }

  var tabs = [QuranTab(), HadethTab(), SebhaTab(), RadioTab(), SettingsTab()];
}
