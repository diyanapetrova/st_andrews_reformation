import 'package:flutter/material.dart';
import 'package:st_andrews_reformation/ui/color_sheme.dart';
import 'package:st_andrews_reformation/ui/common.dart';

class AcknowledgementPage extends StatelessWidget {
  final String title = 'More';

  final List<String> resources = [
    "Special thanks to Ms Elizabeth Rhodes for providing all of the information for this application! This couldn't happend without her.",
    "To discover more about St Andrews’ Reformation:",
    "Brown, Michael, and Stevenson, Katie, eds, Medieval St Andrews: Church, Cult, City (Woodbridge, 2017)",
    "Cant, Ronald, The University of St Andrews: A Short History (Edinburgh, 1970)",
    "Dawson, Jane, ‘“The Face of Ane Perfyt Reformed Kyrk”: St Andrews and the Early Scottish Reformation’ in James Kirk, ed., Humanism and Reform: The Church in Europe, England, and Scotland, 1400-1643 (Oxford, 1991), pp. 413-35",
    "Dunbar, Linda, Reforming the Scottish Church, John Winram (c.1492-1582) and the example of Fife (Aldershot, 2002)",
    "McCallum, John, Reforming the Scottish Parish: The Reformation in Fife, 1560-1640 (Farnham, 2010)",
    "Parker, Geoffrey, ‘The “Kirk by Law Established” and the Origins of  “The Taming of Scotland”: St Andrews 1559-1600’ in Leneman, Leah, ed., Perspectives in Scottish Social History (Aberdeen, 1988) pp. 1-32",
    "Reid, Steven, Humanism and Calvinism: Andrew Melville and the Universities of Scotland, 1560-1625 (Farnham, 2011)",
    "Ryrie, Alec, The Origins of the Scottish Reformation (Manchester, 2006)"
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Color(0xFF00539B),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(15),
            child: Column(
          children:
//              Text("Special thanks to Ms Elizabeth Rhodes for providing all of the information for this application! This couldn't happend without her."),
//              Text("To discover more about St Andrews’ Reformation:"),
              Common.transformParagraphsToText(resources, context),
        )),
        backgroundColor: Palette.background);
  }
}
