import 'package:flutter/material.dart';
import 'package:mcv/shared/components/components.dart';
import 'package:mcv/shared/styles/colors.dart';

class notification extends StatelessWidget {
  const notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Dark_blue,
      ),
      body: ListView.separated(
        itemCount: 25,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30,),
              SizedBox(
                child: Stack(
                  children: [
                    background_Car(width: 350, height: 140, margin: const EdgeInsets.only(left: 0)),
                    Container(
                        margin: const EdgeInsets.only(left: 35,top: 20),
                        child: const Text("P0020",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600),)),
                    Container(
                        margin: const EdgeInsets.only(left: 35,top: 80),
                        child: const Text("OBDII : example example.",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500))),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
