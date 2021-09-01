class Category {
  final String name;

  Category(this.name);
}

List<Category> categories =
    categoriesData.map((item) => Category(item['name'])).toList();

var categoriesData = [
  {"name": "A"},
  {"name": "B"},
  {"name": "C"},
  {"name": "D"},
  {"name": "E"},
  {"name": "F"},
  {"name": "G"},
  {"name": "H"},
  {"name": "I"},
  {"name": "J"},
  {"name": "K"},
  {"name": "L"},
  {"name": "M"},
  {"name": "N"},
  {"name": "O"},
  {"name": "P"},
  {"name": "Q"},
  {"name": "R"},
  {"name": "S"},
  {"name": "T"},
  {"name": "U"},
  {"name": "V"},
  {"name": "W"},
  {"name": "X"},
  {"name": "Y"},
  {"name": "Z"}
];
