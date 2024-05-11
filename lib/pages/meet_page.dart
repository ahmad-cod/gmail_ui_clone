import 'package:flutter/material.dart';
import 'package:gmail_clone/components/featue_card.dart';
import 'package:gmail_clone/model/feature.dart';

class MeetPage extends StatelessWidget {
  const MeetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        leading: const Icon(Icons.menu, color: Colors.white70,),
        title: const Text('Meet', style: TextStyle(color: Colors.white70),),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 14.0),
            child: CircleAvatar(
              maxRadius: 18,
              backgroundImage: AssetImage('lib/images/ahmadDp.png'),
            ),
          ),
        ],
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // const SizedBox(height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ElevatedButton(onPressed: () {}, child: const Text('New Meeting')),
                ElevatedButton(onPressed: () {}, child: const Text('Join with a code')),
              ],
            ),
          ),
          SizedBox(
            height: 250,
            width: 225,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: getFeatures().length,
              itemBuilder: (context, index) => FeatureCard(feature: getFeatures()[index])
            ),
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 10,
                margin: const EdgeInsets.only(right: 4, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue,
                ),
              ),
              Container(
                width: 10,
                height: 10,
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
