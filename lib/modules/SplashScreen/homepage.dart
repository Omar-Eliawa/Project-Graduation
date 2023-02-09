import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

import 'package:mcv/modules/login/login.dart';
import 'package:mcv/shared/components/components.dart';
import 'package:mcv/shared/styles/colors.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Dark_blue,
      body: CupertinoApp(
        home: OnBoardingSlider(
          headerBackgroundColor: Dark_blue,
          pageBackgroundColor: Dark_blue,
          finishButtonText: 'Login Serial Car',
          onFinish: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const login(),
              ),
            );
          },
          skipTextButton: const Text('Skip'),
          background: [
            Image.asset(
              'images/Onbording3.png',
              width: 400,
              height: 400,
            ),
            Image.asset(
              'images/Onbording2.png',
              width: 400,
              height: 400,
            ),
            Image.asset(
              'images/Onbording1.png',
              width: 400,
              height: 400,
            ),
          ],
          totalPage: 3,
          speed: 1.8,
          pageBodies: [

            splash_screen(
                text_title:'Vehicle speed...',
                text_description:'This part talks about Know car speed, check distance  and run time3...',
                Style_text_title: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                Style_text_description: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700,color: Colors.white),
            ),

            splash_screen(
                text_title:'My Vehicle...',
                text_description:'Track your car and know current and history location....',
                Style_text_title: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                Style_text_description: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700,color: Colors.white),
            ),

            splash_screen(
                text_title:'Performance...',
                text_description:'Check your car errors And decode the error...',
                Style_text_title: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                Style_text_description: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700,color: Colors.white),
            ),

          ],
        ),
      ),
    );
  }
}
