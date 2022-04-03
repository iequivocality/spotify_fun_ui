import 'package:flutter/material.dart';

class ScreenContainer extends StatelessWidget {
  ScreenContainer({Key? key, Widget? childd}) : super(key : key);

  final Widget childd = SafeArea(child: Container());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: Scaffold(
                backgroundColor: Theme.of(context).backgroundColor,
                body: childd,
              ),
            )
          ],
        )
      )
    );
  }
}