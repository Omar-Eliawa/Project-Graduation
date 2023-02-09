

import 'package:flutter/material.dart';
import 'package:mcv/modules/SplashScreen/homepage.dart';
import 'package:mcv/shared/styles/colors.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
        navigateRoute: const homepage(),
        backgroundColor: Dark_blue,
        duration: 3000,
        imageSize: 370,
        imageSrc: 'images/logo.gif',
        //backgroundColor: const Color(0xff393e46),
        text: "Safty",
        textStyle:  const TextStyle(color: Colors.white,fontSize: 50.0,fontWeight: FontWeight.bold) ,
    );
  }
}
