import 'package:flutter/material.dart';
import 'package:spotify_fun_ui/widgets/widgets.dart';

class SongScreen extends StatelessWidget {
  const SongScreen({Key? key}) : super(key: key);

  static const String route = "/song";

  onPress(BuildContext context) {
    Navigator.pop(context);  
  }

  Widget testToStrongScreen(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);
    Text text = Text('Song Screen', style: currentTheme.textTheme.titleMedium);
    return ElevatedButton(onPressed: () => { onPress(context) }, child: text);
  }

  @override
  Widget build(BuildContext context) {
    // return SafeArea(
    //   child: Container(
    //     padding: const EdgeInsets.all(10.0),
    //     child: Row(
    //       children: [
    //         Expanded(
    //           child: Scaffold(
    //             backgroundColor: Theme.of(context).backgroundColor,
    //             body: Center(child: testToStrongScreen(context)),
    //           )
    //         )
    //       ],
    //     ),
    //   )
    // );

    return ScreenContainer(child: Center(child: testToStrongScreen(context)));
  }
}
