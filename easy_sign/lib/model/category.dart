class Category {
  final String name;
  final int numOfCourses;
  final String image;

  Category(this.name, this.numOfCourses, this.image);
}

var categoriesData = [
  {"name": "Marketing", 'courses': 17, 'image': "assets/images/marketing.png"},
  {"name": "UX Design", 'courses': 25, 'image': "assets/images/ux_design.png"},
  {
    "name": "Photography",
    'courses': 13,
    'image': "assets/images/photography.png"
  },
  {"name": "Business", 'courses': 17, 'image': "assets/images/business.png"},
];

List<Category> categories = [
  Category("Marketing", 17, "assets/images/marketing.png"),
  Category("UX Design", 25, "assets/images/ux_design.png")
];
