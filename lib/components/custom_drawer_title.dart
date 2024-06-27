import 'package:flutter/material.dart';

class CustomDrawerTitle extends StatelessWidget {
  const CustomDrawerTitle({super.key, required this.data});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        data,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.white54
        )
      ),
    );
  }
}