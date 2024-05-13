import 'package:flutter/material.dart';

class JoinMeeting extends StatelessWidget {
  const JoinMeeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: const Text('Join with a Code', style: TextStyle(color: Colors.white70),),
        iconTheme: const IconThemeData(color: Colors.white70),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Text('join', style: TextStyle(color: Colors.white54),)
          ),
        ],
      ),

      backgroundColor: Colors.grey[900],

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Enter the code provided by the meeting organizer',
              style: TextStyle(
                color: Colors.grey[300],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)),
                color: Colors.grey[800],
              ),
              child: const TextField(
                autofocus: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  hintText: 'Example: abc-mnop-xyz',
                  hintStyle: TextStyle(color: Colors.white54,),
                  
                ),
              ),
            ),
            const SizedBox(height: 20,),
        
            Container(
              width: 200,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.white70)
              ),
              child: const Row(
                children: [
                  Icon(Icons.keyboard_alt_outlined, color: Colors.white60,),
                  SizedBox(width: 10,),
                  Text('Rejoin "zkj-vpap-zgu"',)
                ],
              ),
            )
          ],
        ),
      ),
      
    );
  }
}
