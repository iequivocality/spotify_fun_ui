import 'package:flutter/material.dart';
import 'package:spotify_fun_ui/screens/song.dart';
import 'package:spotify_fun_ui/widgets/widgets.dart';

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
    return ScreenContainer(child: ListView(
      children: <Widget>[
        SearchField(),
        Container( child: testToStrongScreen(context) )
      ],
    ));
  }
}
