class Email {
  final String senderImage;
  final String senderName;
  final String title;
  final String message;
  final String time;

  const Email({
    required this.senderImage,
    required this.senderName,
    required this.title,
    required this.message,
    required this.time,
  });
}

List _emails = const [
  Email(
      senderImage: 'ahmadDp.png',
      senderName: 'Aroyehun Ahmad',
      title: 'Sincerity and Excellence',
      message:
          "Life throws a lot at you right now, from friendships to grades to figuring out who you are. It's easy to feel like you're just faking it sometimes. But here's the secret: being yourself, truly (that's sincerity!), is the coolest superpower you have. When you're genuine, people see the real you, and that's way more attractive than any mask. Plus, when you put your heart into something, even if it's homework or basketball practice (excellence!), you might surprise yourself with how awesome you can be. Don't settle for 'good enough.' Push yourself to learn, grow, and be the best version of you that's what makes life epic, not just okay.",
      time: '10:00pm'),
  Email(
      senderImage: 'codeVillage.jpg',
      senderName: 'CodeVillage Team',
      title: 'Invitation to join us!',
      message:
          "I am inviting you to join us to work on AbuVest, it will serve as a means to hone your flutter skills",
      time: '8:40pm'),
  Email(
      senderImage: 'rentlify.jpeg',
      senderName: 'Team Rentlify',
      title: 'Launching Period is close',
      message: 'Hello, Team. We hope everyone is coping in this period.',
      time: '5:45pm'),
  Email(
      senderImage: 'maafy.jpeg',
      senderName: 'Veiled Pharmacist',
      title: 'Pharmaceutical Science in Islam',
      message:
          'Islamic scholars built upon earlier traditions and emphasized a scientific approach, with experimentation and record-keeping.',
      time: '11:58am'),
  Email(
      senderImage: 'spaceX.png',
      senderName: 'The Team at SpaceX',
      title: 'Humble Invitation',
      message:
        'We at SpaceX are consistently impressed by your innovative contributions to the field.  Your work aligns perfectly with our mission to push the boundaries of space exploration.  We would be honored to have you join our team as we revolutionize space travel.',
      time: '11:00am'),
      Email(
      senderImage: 'ahmadDp.png',
      senderName: 'Prince Ahmad',
      title: 'Principles for life',
      message:
          "Life throws a lot at you right now, from friendships to grades to figuring out who you are. It's easy to feel like you're just faking it sometimes. But here's the secret: being yourself, truly (that's sincerity!), is the coolest superpower you have. When you're genuine, people see the real you, and that's way more attractive than any mask. Plus, when you put your heart into something, even if it's homework or basketball practice (excellence!), you might surprise yourself with how awesome you can be. Don't settle for 'good enough.' Push yourself to learn, grow, and be the best version of you that's what makes life epic, not just okay.",
      time: '10:00pm'),
  Email(
      senderImage: 'codeVillage.jpg',
      senderName: 'CodeVillage Team',
      title: 'Invitation to join us!',
      message:
          "I am inviting you to join us to work on AbuVest, it will serve as a means to hone your flutter skills",
      time: '8:40pm'),
  Email(
      senderImage: 'rentlify.jpeg',
      senderName: 'Team Rentlify',
      title: 'Launching Period is close',
      message: 'Hello, Team. We hope everyone is coping in this period.',
      time: '5:45pm'),
       Email(
      senderImage: 'ahmadDp.png',
      senderName: 'Prince Ahmad',
      title: 'Principles for life',
      message:
          "Life throws a lot at you right now, from friendships to grades to figuring out who you are. It's easy to feel like you're just faking it sometimes. But here's the secret: being yourself, truly (that's sincerity!), is the coolest superpower you have. When you're genuine, people see the real you, and that's way more attractive than any mask. Plus, when you put your heart into something, even if it's homework or basketball practice (excellence!), you might surprise yourself with how awesome you can be. Don't settle for 'good enough.' Push yourself to learn, grow, and be the best version of you that's what makes life epic, not just okay.",
      time: '10:00pm'),
  Email(
      senderImage: 'codeVillage.jpg',
      senderName: 'CodeVillage Team',
      title: 'Invitation to join us!',
      message:
          "I am inviting you to join us to work on AbuVest, it will serve as a means to hone your flutter skills",
      time: '8:40pm'),
  Email(
      senderImage: 'rentlify.jpeg',
      senderName: 'Team Rentlify',
      title: 'Launching Period is close',
      message: 'Hello, Team. We hope everyone is coping in this period.',
      time: '5:45pm'),
];

List getEmails () {
  return _emails;
}