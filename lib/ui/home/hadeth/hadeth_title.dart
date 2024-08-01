import 'package:flutter/material.dart';

import '../../hadeth_details/hadeth_details.dart';
import 'hadethTab.dart';

class HadethTitle extends StatelessWidget {
  Hadeth hadeth;

  HadethTitle(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailesScreen.routeName,
            arguments: hadeth);
      },
      child: Text(hadeth.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium),
    );
  }
}
