import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami1/ui/hadeth_details/hadeth_details.dart';
import 'package:islami1/ui/home/splash_screen/splash_screen.dart';
import 'package:islami1/ui/providers/localeProvider.dart';
import 'package:islami1/ui/providers/themeprovider.dart';
import 'package:islami1/ui/them/my_them.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'ui/chapter_details/chapter_details.dart';
import 'ui/home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var sharedPreferences = await SharedPreferences.getInstance();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(sharedPreferences),
    ),
    ChangeNotifierProvider(
      create: (_) => LocaleProvidr(sharedPreferences),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = ThemeProvider.get(context);
    LocaleProvidr localeProvidr = LocaleProvidr.get(context);
    return MaterialApp(
      initialRoute: splashScreen.routeName,
      routes: {
        splashScreen.routeName: (_) => splashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetails.routeName: (_) => ChapterDetails(),
        HadethDetailesScreen.routeName: (_) => HadethDetailesScreen(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darktTheme,
      locale: Locale(localeProvidr.currentLocale),
      themeMode: themeProvider.currentTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
