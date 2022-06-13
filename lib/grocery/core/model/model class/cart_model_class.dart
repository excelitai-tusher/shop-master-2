class GCart{
  String? productImageUrl;
  String? productName;
  String? productTypes;
  String? productPrice;

  GCart({this.productImageUrl, this.productName, this.productPrice, this.productTypes});

  static List<GCart> list=[
    GCart(
      productImageUrl: "images/white packet.png",
      productName: "Broccoli",
      productTypes: "500 gm",
      productPrice: "\$ 2,00.0",
    ),
    GCart(
      productImageUrl: "images/Yellow packet.png",
      productName: "Broccoli",
      productTypes: "500 gm",
      productPrice: "\$ 2,00.0",
    ),
    GCart(
      productImageUrl: "images/Yellow Yellow.png",
      productName: "Broccoli",
      productTypes: "500 gm",
      productPrice: "\$ 2,00.0",
    ),
  ];
}

