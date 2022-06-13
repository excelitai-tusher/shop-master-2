class PopularModel{
  String? productImageUrl;
  String? productName;
  String? productQuantity;
  String? productPrice;

  PopularModel({this.productImageUrl,this.productName,this.productQuantity,this.productPrice});

  static List<PopularModel> list=[
    PopularModel(
      productImageUrl: "images/grocery/p4.jpg",
      productName: "Product name1",
      productQuantity: "2 Packets",
      productPrice: "\$ 230.0",
    ),
    PopularModel(
      productImageUrl: "images/grocery/p5.jpg",
      productName: "Product name2",
      productQuantity: "2 Packets",

      productPrice: "\$ 230.0",//

    ),
    PopularModel(
      productImageUrl: "images/grocery/p8.jpg",
      productName: "Product name2",
      productQuantity: "2 Packets",
      productPrice: "\$ 230.0",
    ),
  ];
}