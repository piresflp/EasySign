//import 'package:coffee_shop/constants.dart';
import 'package:easy_sign/model/wordsModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WordList extends StatelessWidget {
  final WordsModel word;
  final Function onPress;
  const WordList({
    Key key,
    this.onPress,
    this.word,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            Container(
                //width: 60,
                //child: SvgPicture.asset(words.image),
                ),
            SizedBox(
              width: 20,
            ),
            Text(
              word.name,
              //style: kProductNameStyle,
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
