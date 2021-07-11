import 'dart:developer';
import 'package:easy_sign/repositories/Interfaces/WordRepositoryInterface.dart';
import 'package:http/http.dart' show Client;
import 'dart:convert';
import 'package:easy_sign/models/WordModel.dart';

class WordRepository implements IWordRepository {
  Client client = Client();

  @override
  Future<List<WordModel>> getWordsByLetter(String letter) async {
    try {
      final response =
          await client.post(Uri.parse("http://192.168.0.150:3333/palavras"),
              headers: <String, String>{
                'Content-Type': 'application/json; charset=UTF-8',
              },
              body: jsonEncode(<String, String>{
                'letra_inicial': letter,
              }));

      if (response.statusCode == 200) {
        var list = json.decode(response.body) as List<dynamic>;
        List<WordModel> words = [];

        for (dynamic item in list) {
          WordModel word = new WordModel.fromJson(item);
          words.add(word);
        }

        return words;
      } else
        throw Exception(response.statusCode);
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  @override
  Future<WordModel> getWordById(int id) async {
    try {
      final response = await client.get(
          Uri.parse("http://192.168.0.150:3333/palavras/" + id.toString()));

      if (response.statusCode == 200) {
        WordModel word = new WordModel.fromJson(json.decode(response.body));

        return word;
      } else
        throw Exception(response.statusCode);
    } on Exception catch (e) {
      print(e.toString());
    }
  }
}
