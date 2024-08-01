import 'package:flutter/material.dart';
import 'package:islami1/ui/home/hadeth/hadethTab.dart';
import 'package:islami1/ui/them/defaultscreen.dart';

class HadethDetailesScreen extends StatelessWidget {
  static const String routeName = "hadeth-details";

  const HadethDetailesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return DefaultScreen(
      body: Scaffold(
        appBar: AppBar(
          title: Text(
            hadeth.title,
          ),
        ),
        body: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          elevation: 25,
          margin: EdgeInsets.symmetric(vertical: 65, horizontal: 25),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: SingleChildScrollView(
                      child: Text(
                        hadeth.content,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
