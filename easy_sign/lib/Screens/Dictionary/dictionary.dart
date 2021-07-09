import 'package:easy_sign/controllers/DictionaryController.dart';
import 'package:easy_sign/models/WordModel.dart';
import 'package:flutter/material.dart';

class Dictionary extends StatelessWidget {
  final DictionaryController _dictionaryController = DictionaryController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Salve romanhole"),
      ),
      body: FutureBuilder<List<WordModel>>(
        future: _dictionaryController.fetchWordById(4),
        builder: (context, snapshot) {
          var words = snapshot.data;
          if (words == null) return Text("Deu ruim");

          return ListView.builder(
              itemCount: words.length,
              itemBuilder: (context, index) {
                return ListTile(title: Text(words[index].palavra));
              });
        },
      ),
    );
  }
}
