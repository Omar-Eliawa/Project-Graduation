import 'package:flutter/material.dart';
import 'package:mcv/shared/styles/colors.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';


class temperature extends StatefulWidget {
  const temperature({Key? key}) : super(key: key);

  @override
  State<temperature> createState() => _temperatureState();
}

class _temperatureState extends State<temperature> {
  var temp_val = 80.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yellow,
      appBar: AppBar(
        backgroundColor: const Color(0xff001E4A),
      ),
      body: Center(
        child: SfRadialGauge(
          enableLoadingAnimation: true,
            animationDuration: 4000,
            axes: <RadialAxis>[
          RadialAxis(
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                  widget: Text(
                    '$temp_val °F',
                    style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  positionFactor: 0.8,
                  angle: 90)
            ],
            ranges: <GaugeRange>[
              GaugeRange(
                  startValue: -60,
                  endValue: 120,
                  startWidth: 0.1,
                  sizeUnit: GaugeSizeUnit.factor,
                  endWidth: 0.1,
                  gradient: const SweepGradient(
                      stops: <double>[0.2, 0.5, 0.75],
                      colors: <Color>[Colors.green, Colors.yellow, Colors.red]))
            ],
            pointers:  <GaugePointer>[
              NeedlePointer(
                  value: temp_val,
                  needleColor: Colors.black,
                  tailStyle: const TailStyle(
                      length: 0.18,
                      width: 8,
                      color: Colors.black,
                      lengthUnit: GaugeSizeUnit.factor),
                  needleLength: 0.68,
                  needleStartWidth: 1,
                  needleEndWidth: 8,
                  knobStyle: const KnobStyle(
                      knobRadius: 0.07,
                      color: Colors.white,
                      borderWidth: 0.05,
                      borderColor: Colors.black),
                  lengthUnit: GaugeSizeUnit.factor)
            ],
            ticksPosition: ElementsPosition.outside,
            labelsPosition: ElementsPosition.outside,
            minorTicksPerInterval: 5,
            axisLineStyle: const AxisLineStyle(
              thicknessUnit: GaugeSizeUnit.factor,
              thickness: 0.1,
            ),
            axisLabelStyle:
                const GaugeTextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            radiusFactor: 0.99,
            majorTickStyle: const MajorTickStyle(
                length: 0.1, thickness: 2, lengthUnit: GaugeSizeUnit.factor),
            minorTickStyle: const MinorTickStyle(
                length: 0.05, thickness: 1.5, lengthUnit: GaugeSizeUnit.factor),
            minimum: -60,
            maximum: 120,
            interval: 20,
            startAngle: 115,
            endAngle: 65,
          ),

        ]),
      ),
    );
  }
}
