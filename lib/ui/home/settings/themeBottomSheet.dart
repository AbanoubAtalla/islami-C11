import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/themeprovider.dart';
import '../../ui_untils.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);

    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                setState(() {
                  themeProvider.changeTheme(ThemeMode.light);
                });
              },
              child: themeProvider.isDarkEnabled()
                  ? getUnSelectedItem(context, getTranslations(context).light)
                  : getSelectedItem(context, getTranslations(context).light)),
          Divider(
            height: 30,
          ),
          InkWell(
              onTap: () {
                themeProvider.changeTheme(ThemeMode.dark);
              },
              child: themeProvider.isDarkEnabled()
                  ? getSelectedItem(context, getTranslations(context).dark)
                  : getUnSelectedItem(context, getTranslations(context).dark)),
        ],
      ),
    );
  }

  Widget getSelectedItem(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Theme.of(context).colorScheme.secondary),
          ),
          Icon(Icons.check, color: Theme.of(context).colorScheme.secondary)
        ],
      ),
    );
  }

  Widget getUnSelectedItem(BuildContext context, String text) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
