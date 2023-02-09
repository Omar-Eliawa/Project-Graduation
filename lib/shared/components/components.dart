import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:mcv/shared/styles/colors.dart';

// First 3 pages from enter Apps means SplashScreen
Widget splash_screen({required String? text_title, required String? text_description, TextStyle? Style_text_title, required TextStyle? Style_text_description,}) =>
    Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 480,
          ),
          Container(
            margin: const EdgeInsets.only(right: 130.0),
            child: Text(
              text_title!,
              style: Style_text_title,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(text_description!, style: Style_text_description),
        ],
      ),
    );


// Button Login to Dashboard
Widget Button_Login({required VoidCallback function, required String text,}) => ElevatedButton(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(
          const EdgeInsets.fromLTRB(140, 15, 140, 15)),
      backgroundColor: MaterialStateProperty.all(
        const Color(0xff407BFF),
      ),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      )),
    ),
    onPressed: function,
    child:  Text( text, style: const TextStyle(fontSize: 20),
    ));


// Two TextField to Enter ID and Model ?
Widget FormTextField({required TextEditingController controller, required TextInputType type, required String labelText, required String hintText, required FormFieldValidator  validate,})=> Padding(
  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
  child: TextFormField(
    validator: validate,
    controller: controller,
    keyboardType: type,
    decoration:  InputDecoration(
      fillColor: Colors.white,
      filled: true,
      labelText: labelText,
      labelStyle: const TextStyle(fontSize: 20.0,color: Color(0xff407BFF)),
      hintText: hintText,
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
    ),
  ),
);

/* Page Profile */
Widget Car_info({required String textQ, required String textN,})=>  Row(
  children:  [
    Text(
      textQ,
      style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.white),
    ),
    const SizedBox(
      width: 10,
    ),
    Text(
      textN,
      style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.white),
    )
  ],
);

Widget Image_car()=>Container(
  margin: const EdgeInsets.only(top: 15),
  child: Align(
    alignment: Alignment.center,
    child: Image.asset("images/car2.png"),
  ),
);

Widget Info_Owner({required String TextId, required String TextModel,})=> Container(
  margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      SizedBox(height: 200),
      Text(
        "Car ID : 098376746476",
        style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500),
      ),
      SizedBox(
        height: 25,
      ),
      Text("Car model : KAI ",
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w500)),
    ],
  ),
);

Widget CircularProfile()=>Container(
  margin: const EdgeInsets.fromLTRB(250, 80, 0, 0),
  child: CircularProfileAvatar(
    '',
    borderColor: Colors.white,
    borderWidth: 4,
    elevation: 5,
    radius: 60,
    child: Image.asset(
      'images/men.jpg',
      fit: BoxFit.fitHeight,
    ),
  ),
);

Widget background_Profile({ double? height,})=>Container(
  height: height,
  decoration:  BoxDecoration(
      color: Dark_blue,
      borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(36),
          bottomRight: Radius.circular(36))),
);

Widget background_Car({double height = 370, double width = 380,  EdgeInsets? margin})=> Container(
  margin: margin,
  height: height,
  width: width,
  decoration:  BoxDecoration(
      color: Dark_blue,
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(36),
        bottomRight: Radius.circular(36),
        topLeft: Radius.circular(36),
        topRight: Radius.circular(36),
      )),
);

Widget Info_Car()=> Container(
  margin: const EdgeInsets.only(left: 40, top: 200),
  child: Column(
    children: [
      Car_info(textQ: 'Color : ', textN: 'Red'),
      const SizedBox(
        height: 10,
      ),
      Car_info(textQ: 'Light : ', textN: 'altra white'),
      const SizedBox(
        height: 10,
      ),
      Car_info(textQ: 'wheels : ', textN: 'M 465'),
      const SizedBox(
        height: 10,
      ),
      Car_info(textQ: 'Engine : ', textN: 'MI723'),
    ],
  ),
);

Widget details({required VoidCallback function,})=> Container(
  margin: const EdgeInsets.only(top: 15),
  child: Row(
    children: [
      const SizedBox(
        width: 30,
      ),
      IconButton(
          onPressed: function,
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: Colors.white,
          )),
      const Text(
        "Profile",
        style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),
);


/* Home Page Dashboard */

Widget home_grid({
   required VoidCallback function,
   required String Texticon,
    required String image,
  required double width,
  required double height,
  required double top,
  required double left,
})=>Padding(
  padding: const EdgeInsets.all(20.0),
  child: Stack(
    children: [
      SizedBox(
        width: 200,
        height: 200,
        child:  ElevatedButton.icon(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Dark_blue)),
            onPressed: function,
            icon:  Container(margin: const EdgeInsets.only(bottom: 25,left: 10), child: Image.asset(image,width: width,height: height,)),
            label: const Text("")),
      ),
      Container(
          margin:  EdgeInsets.only(top: top,left: left),
          child:  Text(Texticon,style: const TextStyle(color: Colors.white,fontSize: 20),))
    ],
  ),
);