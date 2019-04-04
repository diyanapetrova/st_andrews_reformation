import 'package:flutter/material.dart';
import 'package:st_andrews_reformation/data/events.dart';
import 'package:st_andrews_reformation/ui/color_sheme.dart';
import 'package:st_andrews_reformation/ui/timeline_event.dart';

class TimelinePage extends StatelessWidget {
  final String title = 'Timeline';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Palette.blue,
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return TimelineEvent(events[index]);
          },
          itemCount: events.length,
        ),
        color: Palette.background,
      ),
    );
  }
}
