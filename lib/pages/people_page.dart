import 'package:flutter/material.dart';
import 'package:st_andrews_reformation/main.dart';
import 'package:st_andrews_reformation/ui/card.dart';
import 'package:st_andrews_reformation/ui/color_sheme.dart';

class PeoplePage extends StatelessWidget {
  final String title = 'People';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Palette.blue,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
              children: people
                  .map((person) => ResourceSummary(person, true))
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
