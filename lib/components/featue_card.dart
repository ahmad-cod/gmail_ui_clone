import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gmail_clone/model/feature.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard(
      {super.key,
      required this.feature});

  final Feature feature;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 245,
            // height: 320,
            child: SvgPicture.asset(
              'lib/images/${feature.cardImage}.svg',
              width: 150,
              height: 150,
            ),
          ),
          const SizedBox(height: 8,),
          Text(
            feature.cardTitle,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 6,),
          SizedBox(
            width: 235,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(feature.cardDescription, softWrap: true,),
              ))
          )
        ],
      ),
    );
  }
}
