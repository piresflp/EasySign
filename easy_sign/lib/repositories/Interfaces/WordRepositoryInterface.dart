import 'package:easy_sign/models/WordModel.dart';

abstract class IWordRepository {
  Future<List<WordModel>> getWordsByLetter(String letter);
  Future<WordModel> getWordById(int id);
}
