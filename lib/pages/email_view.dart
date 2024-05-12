import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gmail_clone/model/email.dart';

class EmailView extends StatelessWidget {
  const EmailView({super.key, required this.email});

  final Email email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          elevation: 0,
          actions: const [
            Icon(
              Icons.archive_outlined,
              color: Colors.white70,
            ),
            SizedBox(
              width: 14,
            ),
            Icon(
              Icons.delete,
              color: Colors.white70,
            ),
            SizedBox(
              width: 14,
            ),
            Icon(
              Icons.email_outlined,
              color: Colors.white70,
            ),
            SizedBox(
              width: 14,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.white70,
            ),
            SizedBox(
              width: 14,
            ),
          ],
        ),
        backgroundColor: Colors.grey[850],
        body: SizedBox(
          child: ListView(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width * .78,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Text(
                        email.title,
                        style: const TextStyle(fontSize: 18,),
                        // overflow: TextOverflow.ellipsis,
                      ),
                      // const SizedBox(width: 1,),
                      Icon(
                        Icons.label_important,
                        color: Colors.amber[500],
                      ),
                      const SizedBox(width: 3,),
                    
                      Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: Colors.grey)),
                        child: const Text(
                          'inbox',
                          style: TextStyle(fontSize: 12),
                        ),
                      )
                    ]),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.star_outline_sharp,
                      color: Colors.white70,
                    ))
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
             
                Container(
                  margin: const EdgeInsets.only(left: 4),
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage('lib/images/${email.senderImage}'),
                    radius: 24,
                  ),
                ),
             const SizedBox(width: 2,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                            width: 110,
                            child: Text(
                              email.senderName,
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                              overflow: TextOverflow.ellipsis,
                            )),
                          const SizedBox(width: 8,),
                            const Text('Yesterday', style: TextStyle(fontSize: 11),)
                      ],
                    ),
                    Row(
                      children: [
                        const Text('to me '),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey[300],
                        )
                      ],
                    )
                  ],
                ),

                const SizedBox(width: 20,),
                Icon(Icons.emoji_emotions_outlined, color: Colors.grey[300],),

                Icon(Icons.subdirectory_arrow_left, color: Colors.grey[300]),


                Icon(Icons.more_vert, color: Colors.grey[300],),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 25),
              child: Text(email.message,
                style: TextStyle(
                  fontSize: 16,
                  height: 1.9,
                  // leadingDistribution: TextLeadingDistribution.even,
                  // wordSpacing: 8,
                  color: Colors.grey[200],
                ),
              ),
            )
          ]),
        ));
  }
}
