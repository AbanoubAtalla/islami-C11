import 'package:flutter/material.dart';
import 'package:islami1/ui/home/settings/languageBottomSheet.dart';
import 'package:islami1/ui/home/settings/themeBottomSheet.dart';
import 'package:islami1/ui/providers/localeProvider.dart';
import 'package:islami1/ui/ui_untils.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var localProvider = LocaleProvidr.get(context);
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
        left: 13,
        right: 13,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            getTranslations(context).theme,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Divider(
            height: 15,
          ),
          InkWell(
            onTap: () {
              showThemeButtom(context);
            },
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary, width: 3),
                  borderRadius: BorderRadius.circular(18),
                  color: Theme.of(context).cardColor,
                ),
                child: Text(getTranslations(context).light,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.secondary))),
          ),
          Divider(
            height: 18,
          ),
          Text(
            getTranslations(context).light,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Divider(
            height: 13,
          ),
          InkWell(
            onTap: () {
              showLanguagButtom(context);
            },
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary, width: 3),
                  borderRadius: BorderRadius.circular(18),
                  color: Theme.of(context).cardColor,
                ),
                child: Text(localProvider.getCurrentLocalText(),
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.secondary))),
          ),
        ],
      ),
    );
  }

  void showThemeButtom(
    BuildContext context,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ThemeBottomSheet();
      },
    );
  }

  void showLanguagButtom(
    BuildContext context,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return LanguageBottomSheet();
      },
    );
  }
}
