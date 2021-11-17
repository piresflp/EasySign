import 'dart:developer';
import 'dart:ffi';

import 'package:easy_sign/components/video_player_widget.dart';
import 'package:easy_sign/models/WordModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

// ignore: must_be_immutable
class Word extends StatefulWidget {
  WordModel word;
  Word({Key key, this.word}) : super(key: key);
  @override
  _WordState createState() => _WordState();
}

class _WordState extends State<Word> {
  VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    //log(_videoPlayerController.toString());
    _videoPlayerController =
        VideoPlayerController.network(widget.word.enderecoGif)
          ..setLooping(true)
          ..initialize().then((_) {
            setState(() {});
            _videoPlayerController.play();
          });
    log(_videoPlayerController.toString());
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //log(controller.toString());
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(18.0),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black,
              iconSize: 35,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 100,
          title: Text(
            "Voltar",
            style: GoogleFonts.getFont('Roboto',
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 40, right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                        child: (_videoPlayerController.value.isInitialized
                            ? VideoPlayer(_videoPlayerController)
                            : Container()))),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(widget.word.palavra,
                      style: GoogleFonts.getFont('Roboto',
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold)),
                ),
                Text(
                  widget.word.genero,
                  style: GoogleFonts.getFont('Roboto',
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 24,
                      color: Color.fromARGB(255, 90, 94, 98)),
                ),
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "•  Exemplo em português:",
                        style: GoogleFonts.getFont('Roboto',
                            color: Color.fromARGB(255, 48, 128, 224),
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Text(
                          "\"" + widget.word.exemploPortugues + "\"",
                          style: GoogleFonts.getFont('Roboto',
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "•  Exemplo em LIBRAS:",
                        style: GoogleFonts.getFont('Roboto',
                            color: Color.fromARGB(255, 48, 128, 224),
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Text(
                          "\"" + widget.word.exemploLibras + "\"",
                          style: GoogleFonts.getFont('Roboto',
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
