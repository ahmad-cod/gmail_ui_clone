import 'package:flutter/material.dart';
import 'package:gmail_clone/components/email_card.dart';
import 'package:gmail_clone/components/my_drawer.dart';
import 'package:gmail_clone/model/email.dart';

class EmailsPage extends StatelessWidget {
  const EmailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      drawer: const MyDrawer(),
      drawerScrimColor: Colors.transparent,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(174, 9, 128, 225),
        label: const Text(
          'Compose',
          style: TextStyle(color: Colors.white70),
        ),
        icon: const Icon(
          Icons.edit,
          color: Colors.white70,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
          child: CustomScrollView(slivers: [
            SliverAppBar(
              iconTheme: IconThemeData(
                color: Colors.grey[300],
              ),
              backgroundColor: Colors.grey[800],
              floating: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              title: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Search in mail',
                          style: TextStyle(fontSize: 16, color: Colors.white70),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: CircleAvatar(
                    maxRadius: 18,
                    backgroundImage: AssetImage('lib/images/ahmadDp.png'),
                  ),
                )
              ],
            ),
            SliverList.builder(
                itemCount: getEmails().length,
                itemBuilder: (context, index) =>
                    EmailCard(email: getEmails()[index]))
          ]),
        ),
      ),
    );
  }
}
