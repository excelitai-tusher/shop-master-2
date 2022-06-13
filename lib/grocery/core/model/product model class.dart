class ProductModel{
  String? imageURL;
  String? ProductTitle;

  ProductModel({this.imageURL, this.ProductTitle});

  static List<ProductModel> list=[
    ProductModel(
      imageURL: "images/Decoration fruit.png",
      ProductTitle: "Fruits",
    ),
    ProductModel(
      imageURL: "images/Many fruits.png",
      ProductTitle: "Vagetable",
    ),
    ProductModel(
      imageURL: "images/Fish.png",
      ProductTitle: "Fishes",
    ),
    ProductModel(
      imageURL: "images/burger cafe.png",
      ProductTitle: "Bakery",
    ),
    ProductModel(
      imageURL: "images/white bottol 1.png",
      ProductTitle: "Dairy",
    ),
  ];
}


