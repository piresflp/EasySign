import 'package:easy_sign/models/WordModel.dart';

abstract class IWordRepository {
  Future<WordModel> getWordById(int id);
}
