import 'package:flutter/material.dart';

class Slide {
  final String image, title, description;

  Slide(
      {@required this.image, @required this.title, @required this.description});
}

final SlideList = [
  Slide(
      image: 'images/man.png',
      title: 'Easy to understand User Interface',
      description:
          'We provide our users with a very friendly and easy to understand interface!'),
  Slide(
      image: 'images/oneonone.png',
      title: 'Fine 1:1s experience',
      description:
          'Through our services we provide you with the best experience of 1:1s for your professional work.'),
  Slide(
      image: 'images/work.png',
      title: 'Service on demand',
      description:
          'Get your queries and issues resolved in no time'),
  Slide(
      image: 'images/calander.png',
      title: 'Prompt customer care services',
      description:
          'Happy to serve you at any time :)'),
];
