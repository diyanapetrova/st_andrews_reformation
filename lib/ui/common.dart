import 'package:flutter/material.dart';
import 'package:st_andrews_reformation/main.dart';
import 'package:st_andrews_reformation/pages/details_page.dart';
import 'package:st_andrews_reformation/ui/color_sheme.dart';

class Common {
  static List<Widget> transformParagraphsToText(
      List<String> text, BuildContext context) {
    List<Widget> list = List();
    text.forEach((paragraph) {
      list.add(Container(
        child: Text(
          paragraph,
          style: Theme.of(context).textTheme.body1,
        ),
      ));
      list.add(Divider(
        color: Palette.background,
      ));
    });
    return list;
  }

  static Widget references(List<String> references, BuildContext context) {
    return Wrap(
        spacing: 4.0, // gap between adjacent chips
        runSpacing: 4.0, // gap between lines
        children: references
            .map((ref) => ActionChip(
                label: Text(
                  ref,
                  style: Theme.of(context)
                      .textTheme
                      .body1
                      .apply(color: Colors.white),
                ),
                backgroundColor: Palette.blue,
                onPressed: () {
                  if (content[ref] != null)
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsPage(content[ref])));
                }))
            .toList());
  }
}
