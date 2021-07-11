import 'package:easy_sign/controllers/DictionaryController.dart';
import 'package:easy_sign/models/WordModel.dart';
import 'package:flutter/material.dart';

Widget fetchWordById(int id) {
  final DictionaryController _dictionaryController = DictionaryController();

  return FutureBuilder<WordModel>(
    future: _dictionaryController.fetchWordById(id),
    builder: (context, snapshot) {
      var requestedWord = snapshot.data;
      if (requestedWord == null) return Text("Deu ruim");

      return ListView.builder(itemBuilder: (context, index) {
        return ListTile(title: Text(requestedWord.palavra));
      });
    },
  );
}
