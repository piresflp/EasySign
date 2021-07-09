class WordModel {
  int id;
  String letraInicial;
  String palavra;
  String significado;
  String genero;
  String origem;
  String enderecoGif;
  String exemploPortugues;
  String exemploLibras;

  WordModel(
      this.id,
      this.letraInicial,
      this.palavra,
      this.significado,
      this.genero,
      this.origem,
      this.enderecoGif,
      this.exemploPortugues,
      this.exemploLibras);

  factory WordModel.fromJson(Map<String, dynamic> parsedJson) {
    return WordModel(
        parsedJson['id'],
        parsedJson['letra_inicial'],
        parsedJson['palavra'],
        parsedJson['significado'],
        parsedJson['genero'],
        parsedJson['origem'],
        parsedJson['endereco_gif'],
        parsedJson['exemplo_portugues'],
        parsedJson['exemplo_libras']);
  }
}
