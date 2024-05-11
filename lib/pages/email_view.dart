import 'package:flutter/material.dart';

class EmailView extends StatelessWidget {
  const EmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.archive_outlined),
          Icon(Icons.delete),
          Icon(Icons.email_outlined),
          Icon(Icons.more_vert),
        ],
      ),
      backgroundColor: Colors.grey[850],

    );
  }
}