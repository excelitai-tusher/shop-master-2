class CategoryModel{
  String? categoriesImageUrl;
  String? categoriesTitle;

  CategoryModel({this.categoriesImageUrl,this.categoriesTitle});

  static List<CategoryModel> list=[
    CategoryModel(
      categoriesImageUrl: "images/grocery/p1.png",
      categoriesTitle: "Fruits",
    ),
    CategoryModel(
      categoriesImageUrl: "images/grocery/p2.jpg",
      categoriesTitle: "Vegetables",
    ),
    CategoryModel(
      categoriesImageUrl: "images/grocery/p3.png",
      categoriesTitle: "Fishes",
    ),
    CategoryModel(
      categoriesImageUrl: "images/grocery/p4.jpg",
      categoriesTitle: "Bakery",
    ),
    CategoryModel(
      categoriesImageUrl: "images/grocery/p5.jpg",
      categoriesTitle: "Dairy",
    ),
    CategoryModel(
      categoriesImageUrl: "images/grocery/p3.png",
      categoriesTitle: "Fishes",
    ),
  ];
}