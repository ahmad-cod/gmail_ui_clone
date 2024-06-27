import 'package:flutter/material.dart';

class DrawerItem {
  const DrawerItem({
    required this.iconData,
    required this.title,
    this.trailingText,
  });

  final IconData iconData;
  final String title;
  final String? trailingText;
}