import 'package:flutter/material.dart';
import 'package:islami1/ui/them/my_them.dart';
import 'package:islami1/ui/ui_untils.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int numberOfTasbeeh = 0;
  List<String> Azkar = [
    "سُبْحَانَ اللَّهِ ",
    "الْلَّهُ أَكْبَرُ",
    "أستغفر الله ",
    "الْحَمْدُ للّهِ رَبِّ الْعَالَمِينَ",
    "لَا إلَه إلّا اللهُ ",
  ];
  int index = 0;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(getFullPathImage('head_sebha_logo.png')),
            Padding(
              padding: const EdgeInsets.only(top: 76),
              child: Transform.rotate(
                angle: angle,
                child: GestureDetector(
                    onTap: () {
                      tasbeehTab();
                    },
                    child:
                        Image.asset(getFullPathImage('body_sebha_logo.png'))),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 27),
          child: Text(
            "عدد التسبيحات ",
            style: Theme.of(context).textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                  color: Color(0xFFD8BB8D),
                  borderRadius: BorderRadius.circular(20)),
              child: Text("$numberOfTasbeeh ",
                  style: Theme.of(context).textTheme.bodyMedium),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  color: MyThemeData.lightPrimary,
                  borderRadius: BorderRadius.circular(20)),
              child: Text('${Azkar[index]}',
                  style: Theme.of(context).textTheme.bodyMedium),
            ),
          ),
        ),
      ],
    );
  }

  tasbeehTab() {
    numberOfTasbeeh++;
    if (numberOfTasbeeh % 33 == 0) {
      index++;
      numberOfTasbeeh = 0;
    }
    angle += 360 / 4;
    if (index == Azkar.length) {
      index = 0;
    }
    setState(() {});
  }
}
