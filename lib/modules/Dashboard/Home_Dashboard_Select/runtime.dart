import 'dart:async';

import 'package:flutter/material.dart';

class runtime extends StatefulWidget {
  const runtime({Key? key}) : super(key: key);

  @override
  State<runtime> createState() => _runtimeState();
}

class _runtimeState extends State<runtime> {
  Duration duration = const Duration();
  Timer? timer;
  @override
  Widget build(BuildContext context) {
    String twoDigits(int n) => n.toString().padLeft(2,'0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    final hours = twoDigits(duration.inHours.remainder(24));
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "$hours:$minutes:$seconds",
          style: const TextStyle(fontSize: 60),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void addTime() {
    final addSeconds = 1;
    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      duration = Duration(seconds: seconds);
    });
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) => addTime());
  }
}
