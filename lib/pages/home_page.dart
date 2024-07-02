import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gmail_clone/components/bottom_nav_bar.dart';
import 'package:gmail_clone/pages/emails_page.dart';
import 'package:gmail_clone/pages/meet_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key,});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final ScrollController _scrollController = ScrollController();
  bool _isExtended = true;

  late final List<Widget> _pages;
  
  // _HomePageState(): 

  void navigateBottomNav(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _pages = [
    EmailsPage(scrollController: _scrollController,),
    const MeetPage(),
  ];
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.userScrollDirection == ScrollDirection.reverse) {
      if (_isExtended) {
        setState(() {
          _isExtended = false;
        });
      }
    } else if (_scrollController.position.userScrollDirection == ScrollDirection.forward) {
      if (!_isExtended) {
        setState(() {
          _isExtended = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      bottomNavigationBar: _isExtended ?
        MyBottomNavbar(handleTabChange: (index) => navigateBottomNav(index),) :
        null,
      body: _pages[selectedIndex],
    );
  }
}