import 'package:flutter/material.dart';

class DescriptionArea extends StatelessWidget {
  const DescriptionArea({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(description, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
