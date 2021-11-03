import 'package:flutter/material.dart';
import 'package:flutter_my_app/description_place.dart';
import 'package:flutter_my_app/header_appbar.dart';
import 'package:flutter_my_app/review_list.dart';

class HomeTrips extends StatelessWidget {
  const HomeTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String descriptionDummy =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et magna velit. Morbi non justo nec lectus scelerisque commodo. Morbi ac diam ultrices, sodales nulla non, feugiat lorem.";
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace(
                namePlace: "Bahamas",
                rating: 5,
                descriptionPlace: descriptionDummy),
            const ReviewList(),
          ],
        ),
        const HeaderAppbar()
      ],
    );
  }
}
