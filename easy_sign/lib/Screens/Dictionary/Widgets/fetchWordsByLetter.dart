import 'dart:developer';
import 'dart:ui';
import 'package:easy_sign/controllers/DictionaryController.dart';
import 'package:easy_sign/models/WordModel.dart';
import 'package:flutter/material.dart';

Future<List<WordModel>> fetchWordsByLetter(String letter) {
  final DictionaryController _dictionaryController = DictionaryController();
  Future<List<WordModel>> lista;

  lista = _dictionaryController.fetchWordsByLetter(letter);
  return lista;
  /*return FutureBuilder<List<WordModel>>(
    future: _dictionaryController.fetchWordsByLetter(letter),
    builder: (context, snapshot) {
      var words = snapshot.data;
      log(snapshot.hasData.toString());
      if (words == null) return Center(child: CircularProgressIndicator());

      return ListView.builder(
          itemCount: words.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text(words[index].palavra));
          });
    },
  );*/
}
