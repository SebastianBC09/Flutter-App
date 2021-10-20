import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  const DescriptionPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      child: const Text(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer iaculis imperdiet diam, ut faucibus nisl mattis nec. Nam dictum vitae turpis ac tincidunt. Proin vel ligula at dolor rutrum congue. Mauris et rutrum lectus, in mollis tortor. Praesent non ex non mi luctus cursus. Maecenas tempor at eros laoreet tristique. Nam turpis orci, sagittis sit amet mollis sed, commodo id velit. Cras nec semper nibh.",
        style: TextStyle(
          fontSize: 12.0,
        ),
        textAlign: TextAlign.left,
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
          child: const Text(
            "Duwili Ella",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[star, star, star, star, star],
        ),
      ],
    );

    final decriptionContent = Container(
      child: Column(
        children: <Widget>[
          placeTitle,
          description,
        ],
      ),
    );

    return decriptionContent;
  }
}
