import 'package:flutter/material.dart';

class ScreenContainer extends StatelessWidget {
  const ScreenContainer({Key? key, required this.child}) : super(key : key);

  final Widget child;

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
                body: child,
              ),
            )
          ],
        )
      )
    );
  }
}