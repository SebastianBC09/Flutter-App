// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'description_place.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Platzi Trips',
        theme: ThemeData(
          primaryColor: Colors.deepOrange,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Hello World!"),
            ),
            body: (const DescriptionPlace())));
  }
}
