import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class speed extends StatefulWidget {
  const speed({Key? key}) : super(key: key);

  @override
  State<speed> createState() => _speedState();
}

class _speedState extends State<speed> {
  var speed_val = 80.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff094AAB),
      appBar: AppBar(
        backgroundColor: const Color(0xff001E4A),
      ),
      body: Center(
        child: SfRadialGauge(
            enableLoadingAnimation: true,
            animationDuration: 3000
            ,axes: <RadialAxis>[
          RadialAxis(
              minimum: 0, maximum: 240,  ranges: <GaugeRange>
          [
            GaugeRange(startValue: 0, endValue: 90, color: Colors.green),
            GaugeRange(startValue: 90, endValue: 190, color: Colors.orange),
            GaugeRange(startValue: 190, endValue: 240, color: Colors.red)
          ],

              pointers: <GaugePointer>[
            NeedlePointer(value: speed_val,enableAnimation: true,)
          ]

              , annotations: <GaugeAnnotation>[
            GaugeAnnotation(
                widget: Text('$speed_val MPH',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white)),
                angle: 90,
                positionFactor: 0.8)
          ]

          )
        ]),
      ),
    );
  }
}
