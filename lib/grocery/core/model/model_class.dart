class BundleOffersModel{
  String? productName;
  String? productImageUrl;
  String? productTypes;
  String? productPrice;

  BundleOffersModel({
    this.productImageUrl,
    this.productName,
    this.productTypes,
    this.productPrice,
  });

  static List<BundleOffersModel> list=[
    BundleOffersModel(
      productImageUrl: "images/Red packet.png",
      productName: "Maggi Noodles",
      productTypes: "2 Packet",
      productPrice: "\$ 1000.0",
    ),
    BundleOffersModel(
      productImageUrl: "images/Fruits bag.png",
      productName: "Maggi Noodles",
      productTypes: "2 Packet",
      productPrice: "\$ 1000.0",
    ),
    BundleOffersModel(
      productImageUrl: "images/white1 packet.png",
      productName: "Maggi Noodles",
      productTypes: "2 Packet",
      productPrice: "\$ 1000.0",
    ),
    BundleOffersModel(
      productImageUrl: "images/vegetable many.png",
      productName: "Maggi Noodles",
      productTypes: "2 Packet",
      productPrice: "\$ 1000.0",
    ),
    BundleOffersModel(
      productImageUrl: "images/many pans.png",
      productName: "Maggi Noodles",
      productTypes: "2 Packet",
      productPrice: "\$ 1000.0",
    ),
    BundleOffersModel(
      productImageUrl: "images/Yellow maggi.png",
      productName: "Maggi Noodles",
      productTypes: "2 Packet",
      productPrice: "\$ 1000.0",
    ),
  ];
}