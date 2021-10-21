// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'description_place.dart';
import 'review.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String descriptionDummy =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et magna velit. Morbi non justo nec lectus scelerisque commodo. Morbi ac diam ultrices, sodales nulla non, feugiat lorem. Mauris auctor tellus vitae euismod mattis. Morbi ac scelerisque felis. Sed vitae euismod orci, eu feugiat magna. Nulla facilisi. Curabitur quis ipsum quis neque lacinia lacinia. Etiam iaculis commodo mi, vel malesuada dolor posuere posuere.";

    return MaterialApp(
      title: 'Platzi Trips',
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello World!"),
        ),
        body: const Review(
          pathImage: "assets/images/Photo.jpeg",
          name: "Sebastien Ballen",
          details: "1 Review 7 Photos",
          comment: "There is an amazing place in Sri Lanka",
        ),
      ),
    );
  }
}
