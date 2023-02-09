import 'package:flutter/material.dart';
import 'package:mcv/modules/login/login.dart';
import 'package:mcv/shared/components/components.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.4,
              child: Stack(
                children: [
                  background_Profile(height: size.height * 2,),
                  details(function: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const login(),
                      ),
                    );
                  }),
                  CircularProfile(),
                  Info_Owner(TextId: 'Car ID : 098376746476', TextModel: 'Car model : KAI '),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Stack(
              children: [
                background_Car(margin: const EdgeInsets.only(left: 15)),
                Image_car(),
                Info_Car(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
