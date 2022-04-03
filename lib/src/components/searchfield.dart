import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  SearchField({Key? key}) : super(key: key);
  
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
          style: Theme.of(context).textTheme.bodySmall,
          controller: _controller,
          decoration: const InputDecoration(
            icon: Icon(Icons.search_rounded, color: Colors.white),
            focusColor: Colors.white,
            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
          ),
        )
    );
  }
}
