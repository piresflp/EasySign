import 'package:easy_sign/controllers/DictionaryController.dart';
import 'package:easy_sign/models/WordModel.dart';
import 'package:flutter/material.dart';

Widget fetchWordsByLetter(String letter) {
  final DictionaryController _dictionaryController = DictionaryController();

  return FutureBuilder<List<WordModel>>(
    future: _dictionaryController.fetchWordsByLetter(letter),
    builder: (context, snapshot) {
      var words = snapshot.data;
      if (words == null) return Text("Deu ruim");

      return ListView.builder(
          itemCount: words.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text(words[index].palavra));
          });
    },
  );
}
