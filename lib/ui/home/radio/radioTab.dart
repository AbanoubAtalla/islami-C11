import 'package:flutter/material.dart';
import 'package:islami1/ui/ui_untils.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Image.asset(getFullPathImage(
            "radio_image.png",
          )),
        ),
        SizedBox(
          height: 45,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 27),
          child: Text("إذاعة القران الكريم",
              style: Theme.of(context).textTheme.titleSmall),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Directionality(
                textDirection: TextDirection.ltr,
                child: Icon(
                  Icons.skip_previous,
                  size: 36,
                )),
            SizedBox(
              width: 27,
            ),
            Icon(Icons.play_arrow, size: 45),
            SizedBox(
              width: 27,
            ),
            Directionality(
                textDirection: TextDirection.rtl,
                child: Icon(
                  Icons.skip_next,
                  size: 36,
                )),
          ],
        )
      ],
    );
  }
}
