import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final int rating;
  final String descriptionPlace;
  const DescriptionPlace(
      {Key? key,
      required this.namePlace,
      required this.rating,
      required this.descriptionPlace})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderStar = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFF2C611),
      ),
    );

    final halfStar = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),
      ),
    );

    final star = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      ),
    );

    final description = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
          fontFamily: "Montserrat",
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575A),
        ),
      ),
    );

    final placeTitle = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: const TextStyle(
              fontFamily: "Montserrat",
              fontSize: 30.0,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[star, star, star, halfStar, borderStar],
        ),
      ],
    );

    return Column(
      children: <Widget>[
        placeTitle,
        description,
      ],
    );
  }
}
