import 'package:easy_sign/controllers/DictionaryController.dart';
import 'package:easy_sign/models/WordModel.dart';
import 'package:easy_sign/screens/Dictionary/Widgets/fetchWordById.dart';
import 'package:easy_sign/screens/Dictionary/Widgets/fetchWordsByLetter.dart';
import 'package:flutter/material.dart';

class Dictionary extends StatelessWidget {
  final DictionaryController _dictionaryController = DictionaryController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Salve romanhole"),
        ),
        body: fetchWordsByLetter('c'));
  }
}
