import 'package:flutter/material.dart';
import 'package:gmail_clone/components/email_card.dart';
import 'package:gmail_clone/model/email.dart';

class EmailsPage extends StatelessWidget {
  const EmailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(174, 9, 128, 225),
        label: const Text('Compose', style: TextStyle(color: Colors.white70),),
        icon: const Icon(Icons.edit, color: Colors.white70,),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // search row
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.menu,
                              color: Colors.white60,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Search in mail',
                          style: TextStyle(fontSize: 16, color: Colors.white70),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      maxRadius: 18,
                      backgroundImage: AssetImage('lib/images/ahmadDp.png'),
                    )
                  ],
                ),
              ),

              // text that shows the category of emails
              const SizedBox(height: 16),
              const Text(
                'Primary',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 13,
                ),
              ),

              // email lists
              const SizedBox(height: 8),

              Expanded(
                  child: ListView.builder(
                      itemCount: getEmails().length,
                      itemBuilder: (context, index) =>
                          EmailCard(email: getEmails()[index])))
            ],
          ),
        ),
      ),
    );
  }
}
