import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami1/ui/home/hadeth/hadeth_title.dart';

import '../../them/my_them.dart';
import '../../ui_untils.dart';

class HadethTab extends StatefulWidget {
  HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadeth = [];

  @override
  void initState() {
    super.initState();
    readHadthFile();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(getFullPathImage('hadeth_logo.png')),
        Container(
          width: double.infinity,
          height: 2,
          color: MyThemeData.lightPrimary,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(getTranslations(context).hadethNum,
              style: Theme.of(context).textTheme.titleMedium),
        ),
        Container(
          width: double.infinity,
          height: 2,
          color: MyThemeData.lightPrimary,
        ),
        Expanded(
          child: allHadeth.isNotEmpty
              ? ListView.separated(
                  itemBuilder: (context, index) {
                    return HadethTitle(allHadeth[index]);
                  },
                  itemCount: allHadeth.length,
                  separatorBuilder: (context, index) {
                    return Container(
                      width: double.infinity,
                      height: 2,
                      margin: EdgeInsets.symmetric(horizontal: 65),
                      color: MyThemeData.lightPrimary,
                    );
                  },
                )
              : Center(child: CircularProgressIndicator()),
        ),
      ],
    );
  }

  void readHadthFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> separatedHadeth = fileContent.split("#");
    for (int i = 0; i < separatedHadeth.length; i++) {
      String singleHadth = separatedHadeth[i];
      List<String> lines = singleHadth.trim().split("\n");
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join("\n");
      Hadeth h = Hadeth(title, content);
      allHadeth.add(h);
    }
    setState(() {});
  }
}

class Hadeth {
  String title;
  String content;

  Hadeth(this.title, this.content);
}
