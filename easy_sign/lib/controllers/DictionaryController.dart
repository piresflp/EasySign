import 'package:easy_sign/models/WordModel.dart';
import 'package:easy_sign/repositories/Interfaces/WordRepositoryInterface.dart';
import 'package:easy_sign/repositories/WordRepository.dart';

class DictionaryController {
  final IWordRepository _wordRepository = WordRepository();

  Future<WordModel> fetchWordById(int id) {
    return _wordRepository.getWordById(id);
  }

  /*Future<List<WordModel>> fetchWordById(int id) {
    return _wordRepository.getWordById(id);
  }*/
}
