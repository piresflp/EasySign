class WordsModel {
  final String name;

  WordsModel(this.name);
}

List<WordsModel> words =
    wordsData.map((item) => WordsModel(item['name'])).toList();

var wordsData = [
  {"name": "Abacaxi"},
  {"name": "Amor"},
  {"name": "Animal"},
  {"name": "Adolescente"},
  {"name": "Armário"},
];
