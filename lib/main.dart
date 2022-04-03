import 'package:flutter/material.dart';
import 'package:spotify_fun_ui/screens/screens.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.white,
          textTheme: const TextTheme(
            titleSmall: TextStyle(color: Colors.white, fontSize: 25),
            titleMedium: TextStyle(color: Colors.white, fontSize: 40),
            bodySmall: TextStyle(color: Colors.white, fontSize: 20)
          ),
          backgroundColor: Colors.black45,
          fontFamily: 'Montserrat'
        ),
        initialRoute: SearchScreen.route,
        routes: {
          '/search': (context) => const SearchScreen(),
          '/song': (context) => const SongScreen()
        });
  }
}