import 'package:flutter/material.dart';
import 'package:st_andrews_reformation/main.dart';
import 'package:st_andrews_reformation/ui/card.dart';
import 'package:st_andrews_reformation/ui/color_sheme.dart';

class SourcesPage extends StatelessWidget {
  final String title = 'Sources';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Color(0xFF00539B),
        ),
        body: SingleChildScrollView(
          child: Column(
              children: sources
                  .map((source) => ResourceSummary(source, true))
                  .toList()),
        ),
        backgroundColor: Palette.background);
  }
}
