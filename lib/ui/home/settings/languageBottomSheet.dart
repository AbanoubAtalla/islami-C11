import 'package:flutter/material.dart';
import 'package:islami1/ui/providers/localeProvider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var localProvider = LocaleProvidr.get(context);
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                localProvider.changeLocal("en");
              },
              child: localProvider.currentLocale == 'en'
                  ? getSelectedItem(context, 'English')
                  : getUnSelectedItem(context, 'English')),
          Divider(
            height: 30,
          ),
          InkWell(
              onTap: () {
                localProvider.changeLocal("ar");
              },
              child: localProvider.currentLocale == 'ar'
                  ? getSelectedItem(context, 'العربية')
                  : getUnSelectedItem(context, 'العربية')),
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
