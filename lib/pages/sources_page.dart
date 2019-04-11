import 'package:flutter/material.dart';
import 'package:st_andrews_reformation/main.dart';
import 'package:st_andrews_reformation/ui/card.dart';

class SourcesPage extends StatelessWidget {
  final String title = 'Sources';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Color(0xFF00539B),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
              children: sources
                  .map((source) => ResourceSummary(source, true))
                  .toList()),
        ),
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("images/home.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
