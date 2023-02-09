import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class load extends StatefulWidget {
  const load({Key? key}) : super(key: key);

  @override
  State<load> createState() => _loadState();
}

class _loadState extends State<load> {
  var load_val=99;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff094AAB),
      appBar: AppBar(
        backgroundColor: const Color(0xff001E4A),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              radius: 120.0,
              lineWidth: 10.0,
              percent: load_val/100,
              header: const Text("Loading",style: TextStyle(fontSize: 25,color: Colors.white),),
              center: Text("$load_val% ",style: TextStyle(fontSize: 25,color: Colors.white)),
              backgroundColor: Colors.orange,
              progressColor: Colors.red,
              restartAnimation: true,
              animationDuration: 1000,
              animateFromLastPercent: true,
              animation: true ,
            ),

          ],
        ),
      ),
    );
  }
}
