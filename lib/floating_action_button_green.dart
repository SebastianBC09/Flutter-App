import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  const FloatingActionButtonGreen({Key? key, void onPressed}) : super(key: key);

  @override
  _FloatingActionButtonGreen createState() => _FloatingActionButtonGreen();
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  void onPressedFav() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Agregaste a tus Favoritos"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: const Icon(
        Icons.favorite_border,
      ),
    );
  }
}
