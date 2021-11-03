import 'package:flutter/material.dart';
import 'package:flutter_my_app/home_trips.dart';
import 'package:flutter_my_app/profile_trips.dart';
import 'package:flutter_my_app/search_trips.dart';

class PlatziTrips extends StatefulWidget {
  const PlatziTrips({Key? key}) : super(key: key);

  @override
  _PlatziTrips createState() => _PlatziTrips();
}

class _PlatziTrips extends State<PlatziTrips> {
  int indexIcon = 0;

  final List<Widget> widgetsChildren = [
    const HomeTrips(),
    const SearchTrips(),
    const ProfileTrips(),
  ];

  void onTapIcon(int index) {
    setState(() {
      indexIcon = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: widgetsChildren[indexIcon],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.indigoAccent,
        ),
        child: BottomNavigationBar(
          onTap: onTapIcon,
          currentIndex: indexIcon,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ],
        ),
      ),
    );
  }
}
