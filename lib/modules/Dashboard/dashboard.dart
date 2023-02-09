import 'package:flutter/material.dart';
import 'package:mcv/modules/Dashboard/bottom_navigation_bar/GPS_button/gps.dart';
import 'package:mcv/modules/Dashboard/bottom_navigation_bar/check_button/check.dart';
import 'package:mcv/modules/Dashboard/bottom_navigation_bar/home_button/home.dart';
import 'package:mcv/modules/Dashboard/bottom_navigation_bar/notification_button/notification.dart';
import 'package:mcv/modules/Dashboard/bottom_navigation_bar/profile/profile.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  var _currentIndex = 0;

  Widget _body() => SizedBox.expand(
    child: IndexedStack(
      index: _currentIndex,
      children: const <Widget>[
        home(),
        check(),
        gps(),
        notification(),
        profile()
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:  _body(),
      bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: [
            /// home
            SalomonBottomBarItem(
              icon:const Icon(Icons.home),
              title: const Text(""),
              selectedColor: Colors.purple,
            ),

            /// engine
            SalomonBottomBarItem(
              icon: const Icon(Icons.car_crash_outlined),
              title: const Text(""),
              selectedColor: Colors.blueAccent,
            ),


            ///GPS
            SalomonBottomBarItem(
            icon:const Icon(Icons.location_on),
              title: const Text(""),
              selectedColor: Colors.green,
            ),


            /// notification
            SalomonBottomBarItem(
              icon: const Icon(Icons.notifications_active_outlined),
              title: const Text(""),
              selectedColor: Colors.orange,
            ),


            /// Profile
            SalomonBottomBarItem(
              icon:const Icon(Icons.person),
              title: const Text(""),
              selectedColor: Colors.teal,
            ),


          ]),
    );
  }
}
