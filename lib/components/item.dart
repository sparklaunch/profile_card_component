import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String title;
  final String caption;
  const Item({super.key, required this.title, required this.caption});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color.fromRGBO(40, 42, 59, 1),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          caption,
          style: const TextStyle(
            color: Color.fromRGBO(105, 105, 105, 1),
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }
}
