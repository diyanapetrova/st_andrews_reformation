import 'package:flutter/material.dart';
import 'package:st_andrews_reformation/main.dart';
import 'package:st_andrews_reformation/model/resource.dart';
import 'package:st_andrews_reformation/pages/details_page.dart';

class SearchBar extends StatelessWidget implements PreferredSizeWidget {
  final String _appBarTitle;
  final Icon _searchIcon = new Icon(Icons.search);

  @override
  final Size preferredSize;

  SearchBar(this._appBarTitle, {Key key})
      : preferredSize = Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(_appBarTitle),
      backgroundColor: Color(0xFF00539B),
      actions: <Widget>[
        IconButton(
          icon: _searchIcon,
          onPressed: () {
            showSearch(context: context, delegate: AppSearch(content));
          },
        )
      ],
    );
  }
}

class AppSearch extends SearchDelegate {
  final Map<String, Resource> content;

  AppSearch(this.content);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> searchable = content.keys.toList();

    List<String> filtered = searchable
        .where((entry) => entry.toLowerCase().contains(query.toLowerCase()))
        .toList();

    if (filtered.isNotEmpty)
      return ListView.builder(
          itemCount: filtered.length,
          itemBuilder: (context, index) {
            var result = filtered[index];
            return GestureDetector(
              child: ListTile(
                title: Text(result),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsPage(content[result])),
                );
              },
            );
          });
    else
      return Text("No results found!");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> searchable = content.keys.toList();

    List<String> filtered = searchable
        .where((entry) => entry.toLowerCase().contains(query.toLowerCase()))
        .toList();

    if (filtered.isNotEmpty)
      return ListView.builder(
          itemCount: filtered.length,
          itemBuilder: (context, index) {
            var result = filtered[index];
            return GestureDetector(
              child: ListTile(
                title: Text(result),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsPage(content[result])),
                );
              },
            );
          });
    else
      return Text("No results found!");
  }
}
