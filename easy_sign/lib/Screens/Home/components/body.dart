import 'package:easy_sign/Screens/Translator/translator.dart';
import 'package:flutter/material.dart';
import 'package:easy_sign/Screens/Dictionary/dictionary.dart';
import 'package:easy_sign/Screens/Home/components/background.dart';
import 'package:easy_sign/components/rounded_button.dart';
import 'package:easy_sign/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //File file = File("assets/images/Easy_Sign.png");
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Center(
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
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: size.width * 0.8,
                  child: ElevatedButton(
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Dictionary())),
                      child: Text("Dicionário",
                          style: GoogleFonts.getFont('Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 48, 128, 224),
                          padding: EdgeInsets.fromLTRB(70, 15, 70, 15),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0)))),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: size.width * 0.8,
                  child: OutlinedButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Translator())),
                    child: Text("Tradutor",
                        style: GoogleFonts.getFont('Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.black)),
                    style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(78, 15, 78, 15),
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0)),
                        side: BorderSide(
                            color: Color.fromARGB(255, 48, 128, 224),
                            width: 4)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
