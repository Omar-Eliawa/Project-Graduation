
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mcv/modules/Dashboard/dashboard.dart';
import 'package:mcv/modules/SplashScreen/homepage.dart';
import 'package:mcv/shared/components/components.dart';
import 'package:mcv/shared/styles/colors.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  final _formKey = GlobalKey<FormState>();
  var ControllerID = TextEditingController();
  var ControllerModel = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Dark_blue,

      appBar: AppBar (
        title:  const Text("Data User"),
        backgroundColor: const Color(0xff407BFF),
        centerTitle: true,
        leading:  IconButton( onPressed: (){
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => const homepage(),
            ),
          );
        }, icon: const Icon(Icons.arrow_back_ios),),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10.0,),
              Image.asset("images/login.png",width:350,height:350,),
              const SizedBox(height: 30.0,),
              FormTextField(
                  controller: ControllerID,
                  labelText: "Car ID" ,
                  hintText: "Enter Car ID ..." ,
                  type: TextInputType.number,
                  validate: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Car ID';
                      }
                      return null;

                  }),
              const SizedBox(height: 40,),
              FormTextField(
                  controller: ControllerModel,
                  labelText: "Car Model" ,
                  hintText: "Enter Car Model ..." ,
                  type: TextInputType.text,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Car Model';
                    }
                    return null;
                  },),
              const SizedBox(height: 40,),
              Button_Login(function: (){
                if(_formKey.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data'))
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const dashboard(),
                    ),
                  );
                }
              }, text: "Login")
          ],),
        ),
      ),
    );
  }
}
