import 'package:flutter/material.dart';
import 'package:easy_sign/Screens/Dicio/dicio.dart';
import 'package:easy_sign/Screens/Home/components/background.dart';
import 'package:easy_sign/components/rounded_button.dart';
import 'package:easy_sign/constants.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //File file = File("assets/images/Easy_Sign.png");
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "BEM VINDO AO EASY SIGN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            Image.network(
              "https://cdn.discordapp.com/attachments/775328699942830085/847108837810372618/Easy_Sign_5.png",
              height: size.height * 0.45,
            ),
            /*Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets\images\Easy_Sign.png"),
              )),
            ),*/
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "DICIONARIO",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Dicio();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "TRADUTOR",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Dicio();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
