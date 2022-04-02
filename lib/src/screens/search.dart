import 'package:flutter/material.dart';

@immutable
class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  static const String route = "/search";

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);
    Text text =
        Text('Search Screen', style: currentTheme.textTheme.titleMedium);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Center(child: text),
      ),
    );
  }
}
