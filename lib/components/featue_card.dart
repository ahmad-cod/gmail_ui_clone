import 'package:flutter/material.dart';
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
            width: 225,
            child: SvgPicture.asset(
              'lib/images/${feature.cardImage}.svg',
              width: 150,
              height: 150,
            ),
          ),
          Text(
            feature.cardTitle,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          Text(feature.cardDescription, overflow: TextOverflow.ellipsis,)
        ],
      ),
    );
  }
}
