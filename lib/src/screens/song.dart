import 'package:flutter/material.dart';

class SongScreen extends StatelessWidget {
  const SongScreen({Key? key}) : super(key: key);

  static const String route = "/song";

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);
    Text text = Text('Song Screen', style: currentTheme.textTheme.titleMedium);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Center(child: text),
      ),
    );
  }
}
