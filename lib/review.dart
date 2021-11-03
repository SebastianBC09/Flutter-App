import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final String pathImage;
  final String name;
  final String details;
  final String comment;

  const Review(
      {Key? key,
      required this.pathImage,
      required this.name,
      required this.details,
      required this.comment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final userName = Container(
    //   margin: const EdgeInsets.only(
    //     left: 15.0,
    //   ),
    //   child: Text(
    //     name,
    //     textAlign: TextAlign.left,
    //     style: const TextStyle(
    //       fontFamily: "Montserrat",
    //       fontSize: 17.0,
    //       fontWeight: FontWeight.w900,
    //     ),
    //   ),
    // );

    final userName = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 10.0,
          ),
          child: Text(
            name,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 18.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ],
    );

    // final userInfo = Container(
    //   margin: const EdgeInsets.only(
    //     left: 15.0,
    //   ),
    //   child: Text(
    //     details,
    //     textAlign: TextAlign.left,
    //     style: const TextStyle(
    //       fontFamily: "Montserrat",
    //       fontSize: 13.0,
    //       color: Color(0xFFA3A5A7),
    //     ),
    //   ),
    // );

    final userInfo = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 10.0,
          ),
          child: Text(
            details,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 12.0,
              color: Color(0xFFA3A5A7),
            ),
          ),
        ),
      ],
    );

    // final userComment = Container(
    //   margin: const EdgeInsets.only(
    //     left: 15.0,
    //   ),
    //   child: Text(
    //     comment,
    //     textAlign: TextAlign.left,
    //     style: const TextStyle(
    //       fontFamily: "Montserrat",
    //       fontSize: 13.0,
    //       fontWeight: FontWeight.w100,
    //     ),
    //   ),
    // );

    final userComment = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 10.0,
          ),
          child: Text(
            comment,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 12.0,
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
      ],
    );

    // final userPhoto = Container(
    //   margin: const EdgeInsets.only(
    //     left: 20.0,
    //     right: 20.0,
    //   ),
    //   width: 80.0,
    //   height: 80.0,
    //   decoration: BoxDecoration(
    //     shape: BoxShape.circle,
    //     image: DecorationImage(
    //       fit: BoxFit.cover,
    //       image: AssetImage(pathImage),
    //     ),
    //   ),
    // );

    final userPhoto = Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 10.0,
            left: 20.0,
            bottom: 10.0,
          ),
          width: 80.0,
          height: 80.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage),
            ),
          ),
        ),
      ],
    );

    final userEntry = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );

    return Row(
      children: <Widget>[
        userPhoto,
        userEntry,
      ],
    );
  }
}
