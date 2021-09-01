import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:easy_sign/constants.dart';
import 'package:easy_sign/model/wordsModel.dart';
import 'package:easy_sign/components/word_list.dart';
import 'package:easy_sign/Screens/Word/word.dart';

class Words extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 0, top: 10, right: 10),
        child: ListView(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: words.length,
              itemBuilder: (context, index) => WordList(
                word: words[index],
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Word(
                        word: words[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        //SizedBox(height: 30),
        //Text("Escolha uma categoria de palavras", style: kHeadingextStyle),
        /*Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF5F5F7),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset("assets/icons/search.svg"),
                  SizedBox(width: 16),
                  Container(
                      width: 240,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Digite categoria desejada:",
                            hintStyle: TextStyle(color: Colors.grey[500])),
                      ))
                ],
              ),
            ),*/
        /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //Text("Categorias", style: kTitleTextStyle),
              ],
            ),*/
        //SizedBox(height: 30),
      ),
    );
  }

  /*@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }*/
}
