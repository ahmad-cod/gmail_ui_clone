import 'package:flutter/material.dart';

class CustomDrawerTile extends StatelessWidget {
  const CustomDrawerTile({super.key, required this.iconData, required this.text});

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
                leading: Icon(iconData, color: Colors.white70,),
                title: Text(text,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                ),
                ),
              );
  }
}