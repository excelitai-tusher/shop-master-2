class DealsOfTheDayModel{
  String? productImageUrl;
  String? productName;
  String? day;
  String? hours;
  String? minuets;
  String? second;
  int? ratting;
  String? price;
  String? prePrice;


  DealsOfTheDayModel({
    this.productImageUrl,
    this.productName,
    this.day,
    this.hours,
    this.minuets,
    this.second,
    this.ratting,
    this.price,
    this.prePrice,
});

  static List<DealsOfTheDayModel> list=[
    DealsOfTheDayModel(
      productImageUrl:"images/grocery/p6.jpg",
      productName: "product name 1",
      day: "15",
      hours: "6",
      minuets: "24",
      second: "57",
      ratting: 4,
      price: "1000.0",
      prePrice: "2000.0",
    ),
    DealsOfTheDayModel(
      productImageUrl:"images/grocery/p7.jpg",
      productName: "product name 1",
      day: "15",
      hours: "6",
      minuets: "24",
      second: "57",
      ratting: 4,
      price: "1000.0",
      prePrice: "2000.0",
    ),
    DealsOfTheDayModel(
      productImageUrl:"images/grocery/p8.jpg",
      productName: "product name 1",
      day: "15",
      hours: "6",
      minuets: "24",
      second: "57",
      ratting: 4,
      price: "1000.0",
      prePrice: "2000.0",
    ),
    DealsOfTheDayModel(
      productImageUrl:"images/grocery/p9.jpg",
      productName: "product name 1",
      day: "15",
      hours: "6",
      minuets: "24",
      second: "57",
      ratting: 4,
      price: "1000.0",
      prePrice: "2000.0",
    ),
    DealsOfTheDayModel(
      productImageUrl:"images/grocery/p9.jpg",
      productName: "product name 1",
      day: "15",
      hours: "6",
      minuets: "24",
      second: "57",
      ratting: 4,
      price: "1000.0",
      prePrice: "2000.0",
    ),
  ];
}