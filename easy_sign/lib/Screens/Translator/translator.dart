import 'package:easy_sign/controllers/DictionaryController.dart';
import 'package:easy_sign/models/WordModel.dart';
import 'package:easy_sign/screens/Dictionary/Widgets/fetchWordById.dart';
import 'package:easy_sign/screens/Dictionary/Widgets/fetchWordsByLetter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Translator extends StatelessWidget {
  final DictionaryController _dictionaryController = DictionaryController();

  @override
  Widget build(BuildContext context) {
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
    );
    //body: fetchWordsByLetter("c"));
  }
}
