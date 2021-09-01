import 'package:easy_sign/model/wordsModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Word extends StatefulWidget {
  final WordsModel word;

  const Word({Key key, this.word}) : super(key: key);
  @override
  _WordState createState() => _WordState();
}

class _WordState extends State<Word> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.network(
                  "https://media2.giphy.com/media/5wG4yHHgvrhut3jz6a/giphy.gif?cid=6c09b95282jfxsayl1w6hrcyp8b906huxdlk4hdic8fm103v&rid=giphy.gif&ct=s",
                  height: 180,
                ),
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Text("Exemplo da palavra numa frase em português"),
                      Text("Olá, tudo bem?"),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Text("Exemplo da palavra numa frase em LIBRAS"),
                      Text("SOL FORTEmuito OLHO OFUSCAR.")
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}