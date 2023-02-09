import 'package:flutter/material.dart';
import 'package:mcv/modules/Dashboard/Home_Dashboard_Select/distance.dart';
import 'package:mcv/modules/Dashboard/Home_Dashboard_Select/load.dart';
import 'package:mcv/modules/Dashboard/Home_Dashboard_Select/rbm.dart';
import 'package:mcv/modules/Dashboard/Home_Dashboard_Select/runtime.dart';
import 'package:mcv/modules/Dashboard/Home_Dashboard_Select/speed.dart';
import 'package:mcv/modules/Dashboard/Home_Dashboard_Select/temperature.dart';
import 'package:mcv/modules/login/login.dart';
import 'package:mcv/shared/components/components.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(children: [
            SizedBox(
              height: size.height * 0.4,
              child: Stack(
                children: [
                  background_Profile(),
                  details(function: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const login(),
                      ),
                    );
                  }),
                  CircularProfile(),
                  Container(
                      margin: const EdgeInsets.only(top: 140, left: 20),
                      child: const Text(
                        "Welcome Dear...",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      )),
                  Container(
                      margin: const EdgeInsets.only(top: 270, left: 108),
                      child: const Text(
                        "DashBoard",
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 400,
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 2.0,
                ),
                shrinkWrap: false,
                children: [
                  home_grid(image: "images/speedicon.png", Texticon: 'Speed', function: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const speed(),
                          ),
                        );
                      }, top: 120, left: 50, height: 100, width: 100),
                  home_grid(
                      image: "images/distanceicon.png",
                      Texticon: 'Distance',
                      function: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const distance(),
                          ),
                        );
                      },
                      top: 123,
                      left: 40,
                      height: 80,
                      width: 80),
                  home_grid(
                      image: "images/time.png",
                      Texticon: 'Run time',
                      function: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const runtime(),
                          ),
                        );
                      },
                      top: 120,
                      left: 38,
                      height: 80,
                      width: 80),
                  home_grid(
                      image: "images/rbm.png",
                      Texticon: 'RBM',
                      function: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const rbm(),
                          ),
                        );
                      },
                      top: 123,
                      left: 58,
                      height: 80,
                      width: 80),
                  home_grid(
                      image: "images/temp.png",
                      Texticon: 'Engine temp',
                      function: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const temperature(),
                          ),
                        );
                      },
                      top: 123,
                      left: 23,
                      height: 70,
                      width: 70),
                  home_grid(
                      image: "images/load.png",
                      Texticon: 'Engine load',
                      function: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const load(),
                          ),
                        );
                      },
                      top: 123,
                      left: 23,
                      height: 80,
                      width: 80),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
