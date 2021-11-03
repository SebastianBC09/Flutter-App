import 'package:flutter/material.dart';
import 'package:flutter_my_app/card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          CardImage(pathAsset: 'assets/images/mountain_stars.webp'),
          CardImage(pathAsset: 'assets/images/mountain.jpeg'),
          CardImage(pathAsset: 'assets/images/river.webp'),
          CardImage(pathAsset: 'assets/images/beach_palm.jpeg'),
          CardImage(pathAsset: 'assets/images/beach.jpeg'),
        ],
      ),
    );
  }
}
