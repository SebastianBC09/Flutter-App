import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Review(
            pathImage: "assets/images/people.jpg",
            name: "Josep Maria Bartomeu",
            details: "1 Review 7 Photos",
            comment: "El peor presidente del FC Barcelona."),
        Review(
            pathImage: "assets/images/girl.webp",
            name: "El Barto",
            details: "8 Review 2 Photos",
            comment: "El peor presidente del FC Barcelona."),
        Review(
            pathImage: "assets/images/ann.jpg",
            name: "Ronald Cuman",
            details: "4 Review 1 Photos",
            comment: "Pesimo tecnico, excelente defensor."),
      ],
    );
  }
}
