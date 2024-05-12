class Feature {
  const Feature(
      {required this.cardImage,
      required this.cardTitle,
      required this.cardDescription});

  final String cardImage;
  final String cardTitle;
  final String cardDescription;
}

List<Feature> _features = const [
  Feature(
      cardImage: 'get_a_link',
      cardTitle: 'Get a link you can share ',
      cardDescription: 'have a shareable link'),
  Feature(
      cardImage: 'safe_meeting',
      cardTitle: 'Your meeting is safe',
      cardDescription:
          ' No one can join a meeting unless invited or admitted by the host'),
];

List getFeatures () {
  return _features;
}