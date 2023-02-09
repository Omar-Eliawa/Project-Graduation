import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class rbm extends StatefulWidget {
  const rbm({Key? key}) : super(key: key);

  @override
  State<rbm> createState() => _rbmState();
}

class _rbmState extends State<rbm> {
  var rbm_val = 70.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff094AAB),
      appBar: AppBar(
        backgroundColor: const Color(0xff001E4A),
      ),      body: Center(
        child: SfRadialGauge(
            enableLoadingAnimation: true,
            animationDuration: 3000
            ,axes: <RadialAxis>[
          RadialAxis(
              minimum: 0, maximum: 100,  ranges: <GaugeRange>
          [
            GaugeRange(startValue: 0, endValue: 50, color: Colors.green),
            GaugeRange(startValue: 50, endValue: 80, color: Colors.orange),
            GaugeRange(startValue: 80, endValue: 100, color: Colors.red),
          ],

              pointers: <GaugePointer>[
                NeedlePointer(value: rbm_val,enableAnimation: true,)
              ]

              , annotations: <GaugeAnnotation>[
            GaugeAnnotation(
                widget: Text('$rbm_val MPH',
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
