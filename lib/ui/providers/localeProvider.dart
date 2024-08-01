import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvidr extends ChangeNotifier {
  String currentLocale = "en";
  static const String LanguageKey = 'Language';
  final SharedPreferences prefs;

  LocaleProvidr(this.prefs) {
    readSavedLocal();
  }

  void readSavedLocal() async {
    currentLocale = prefs.getString(LanguageKey) ?? 'en';
  }

  void SavedLocal() async {
    prefs.setString(LanguageKey, currentLocale);
  }

  void changeLocal(String newLocal) {
    currentLocale = newLocal;
    notifyListeners();
    SavedLocal();
  }

  String getCurrentLocalText() {
    return currentLocale == 'en' ? 'English' : 'العربية';
  }

  static LocaleProvidr get(BuildContext context) {
    return Provider.of<LocaleProvidr>(context);
  }
}
