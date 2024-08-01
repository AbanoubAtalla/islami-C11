import 'package:flutter/cupertino.dart';
import 'package:islami1/ui/ui_untils.dart';

class BottomNavItem extends BottomNavigationBarItem {
  BottomNavItem(String title, Color backgroundColor,
      {String? iconPath, Icon? mainIcon = null})
      : super(
            icon: mainIcon != null
                ? mainIcon
                : ImageIcon(AssetImage(getFullPathImage(iconPath!))),
            label: title,
            backgroundColor: backgroundColor);
}
