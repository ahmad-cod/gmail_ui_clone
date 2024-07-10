import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavbar extends StatelessWidget {
  const MyBottomNavbar({super.key, required this.handleTabChange});
  
  final void Function (int)? handleTabChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 25),
      decoration: BoxDecoration(
        color: Colors.grey[800],
      ),
      child: GNav(
        color: const Color(0xFFCCCCCC),
        tabBackgroundColor: const Color(0xFF7AA7FF),
        tabMargin: const EdgeInsets.symmetric(horizontal: 32, vertical: 7),
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 22),
        onTabChange: (value) => handleTabChange!(value),
        tabs: const [
          GButton(icon: Icons.email,),
          GButton(icon: Icons.video_camera_back_outlined,)
        ]
      ),
    );
  }
}