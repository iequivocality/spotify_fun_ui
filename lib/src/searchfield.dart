import 'package:flutter/widgets.dart';

@immutable
class SearchField extends StatelessWidget {
  const SearchField({Key? key, this.text = ""}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row();
  }
}
