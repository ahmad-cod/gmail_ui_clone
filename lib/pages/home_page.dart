import 'package:flutter/material.dart';
import 'package:gmail_clone/components/bottom_nav_bar.dart';
import 'package:gmail_clone/pages/emails_page.dart';
import 'package:gmail_clone/pages/meet_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final List<Widget> _pages = const [
    EmailsPage(),
    MeetPage(),
  ];

  void navigateBottomNav(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      bottomNavigationBar: MyBottomNavbar(handleTabChange: (index) => navigateBottomNav(index),),
      body: _pages[selectedIndex],
    );
  }
}