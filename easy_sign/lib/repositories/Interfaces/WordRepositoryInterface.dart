import 'package:easy_sign/models/WordModel.dart';

abstract class IWordRepository {
  Future<List<WordModel>> getWordById(int id);
}
