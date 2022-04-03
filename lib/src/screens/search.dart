import 'package:flutter/material.dart';
import 'package:spotify_fun_ui/src/screens/song.dart';
import 'package:spotify_fun_ui/src/components/searchfield.dart';

@immutable
class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  static const String route = "/search";

  onPress(BuildContext context) {
    Navigator.pushNamed(context, SongScreen.route);  
  }

  Widget testToStrongScreen(context) {
    return ElevatedButton(onPressed: () => { onPress(context) }, child: const Text("TO SONG"));
  }

  @override
  Widget build(BuildContext context) {
    // ThemeData currentTheme = Theme.of(context);
    // Text text =
    //     Text('Search Screen', style: currentTheme.textTheme.titleMedium);

    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: Scaffold(
                backgroundColor: Theme.of(context).backgroundColor,
                body: ListView(
                  children: <Widget>[
                    SearchField(),
                    Container( child: testToStrongScreen(context) )
                  ],
                ),
              ),
            )
          ],
        )
      )
    );

    // return ScreenContainer(childd: ListView(
    //   children: <Widget>[
    //     SearchField(),
    //     Container( child: testToStrongScreen(context) )
    //   ],
    // ));
  }
}
