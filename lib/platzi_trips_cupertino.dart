import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home_trips.dart';
import 'profile_trips.dart';
import 'search_trips.dart';

class PlatziTripsCupertino extends StatelessWidget {
  const PlatziTripsCupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: CupertinoColors.separator,
          activeColor: CupertinoColors.systemIndigo,
          inactiveColor: CupertinoColors.darkBackgroundGray.withOpacity(0.5),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.location),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bell),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return const HomeTrips();
            case 1:
              return const SearchTrips();
            case 2:
              return const ProfileTrips();
          }
          return Container();
        },
      ),
    );
  }
}
