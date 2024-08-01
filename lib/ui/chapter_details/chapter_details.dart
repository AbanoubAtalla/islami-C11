import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami1/ui/chapter_details/verse_content.dart';
import 'package:islami1/ui/them/defaultscreen.dart';
import 'package:islami1/ui/them/my_them.dart';

class ChapterDetails extends StatefulWidget {
  static const String routeName = 'chapter_details';

  const ChapterDetails({super.key});

  @override
  State<ChapterDetails> createState() => _ChapterDetailsState();
}

class _ChapterDetailsState extends State<ChapterDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
    if (verses.isEmpty) {
      readFileData(args.chapterIndex);
    }
    return DefaultScreen(
      body: Scaffold(
        appBar: AppBar(
          title: Text(
            args.chapterTitle,
          ),
        ),
        body: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          elevation: 25,
          margin: EdgeInsets.symmetric(vertical: 65, horizontal: 25),
          child: verses.isNotEmpty
              ? ListView.separated(
                  itemBuilder: (context, index) {
                    return VerseContent(verses[index], index);
                  },
                  itemCount: verses.length,
                  separatorBuilder: (context, index) => Container(
                    height: 1,
                    color: MyThemeData.lightPrimary,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 64),
                  ),
                )
              : Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }

  void readFileData(int fileIndex) async {
    String fileContent =
        await rootBundle.loadString("assets/files/${fileIndex + 1}.txt");
    List<String> lines = fileContent.trim().split("\n");
    setState(() {
      verses = lines;
    });
  }
}

class ChapterDetailsArgs {
  int chapterIndex;
  String chapterTitle;

  ChapterDetailsArgs(this.chapterIndex, this.chapterTitle);
}
