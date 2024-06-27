import 'package:flutter/material.dart';
import 'package:gmail_clone/components/custom_drawer_tile.dart';
import 'package:gmail_clone/components/custom_drawer_title.dart';
import 'package:gmail_clone/model/drawer_item.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  final List<DrawerItem> _drawerItems = const [
    DrawerItem(iconData: Icons.star, title: 'Starred'),
    DrawerItem(iconData: Icons.schedule_sharp, title: 'Snoozed'),
    DrawerItem(iconData: Icons.label_important_outline_sharp, title: 'Important'),
    DrawerItem(iconData: Icons.send, title: 'Sent'),
    DrawerItem(iconData: Icons.schedule_send, title: 'Scheduled'),
    DrawerItem(iconData: Icons.outbox, title: 'Outbox'),
    DrawerItem(iconData: Icons.drafts, title: 'Drafts'),
    DrawerItem(iconData: Icons.mail_sharp, title: 'All mail'),
    DrawerItem(iconData: Icons.dangerous_outlined, title: 'Spam'),
    DrawerItem(iconData: Icons.delete, title: 'Trash'),
    DrawerItem(iconData: Icons.label_important_outline_sharp, title: 'Old Inbox'),
    DrawerItem(iconData: Icons.label_important_outline_sharp, title: 'toolbox'),
    DrawerItem(iconData: Icons.label_important_outline_sharp, title: 'Tutorial'),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueGrey[900],
      
      child: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          const Text('Gmail'),
          const Divider(),
          const CustomDrawerTile(
            iconData: Icons.all_inbox,
            text: 'All inboxes',
          ),
          const Divider(),
          Container(
            margin: const EdgeInsets.only(right: 3),
            decoration: const BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.only(topRight: Radius.circular(15), bottomRight: Radius.circular(15)),
            ),
            child: const ListTile(
              leading: Icon(Icons.inbox, color: Colors.white70,),
              title: Text('Primary',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15),
              ),
              trailing: Text('101',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 15),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.tag, color: Colors.white70,),
            title: const Text('Promotions',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 15,
              ),
            ),
            trailing: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 3),
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Text('2 new'),
            ),
          ),
          const CustomDrawerTile(
            iconData: Icons.people_alt_outlined,
            text: 'Social',
          ),
          const CustomDrawerTitle(data: 'Recent labels'),
          const CustomDrawerTile(
            iconData: Icons.label_important_outline,
            text: 'Toolbox',
          ),
          const CustomDrawerTile(
            iconData: Icons.label_important_outline,
            text: 'Tutorial',
          ),
          const CustomDrawerTitle(data: 'All labels'),
         SizedBox(
          height: 630,
           child: ListView.builder(
            itemCount: _drawerItems.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(_drawerItems[index].iconData, color: Colors.white70,),
                title: Text(_drawerItems[index].title,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                ),
                ),
              );
            }
           ),
         ),
         
          const CustomDrawerTitle(data: 'Google Apps'),
          const CustomDrawerTile(
            iconData: Icons.calendar_today,
            text: 'Calendar',
          ),
          const CustomDrawerTile(
            iconData: Icons.contacts,
            text: 'Contacts',
          ),
          const Divider(),
          const CustomDrawerTile(
            iconData: Icons.settings,
            text: 'Settings',
          ),
          
          const CustomDrawerTile(
            iconData: Icons.help_outline,
            text: 'Help & feedback',
          ),

          
        ],
      ),
    );
  }
}