class GroceryTrendingProduct {

  List<GroceryTrendProducts>? trendingProduct;

  GroceryTrendingProduct({this.trendingProduct});

  GroceryTrendingProduct.fromJson(Map<String, dynamic> json) {
    if (json['trending_product'] != null) {
      trendingProduct = <GroceryTrendProducts>[];
      json['trending_product'].forEach((v) {
        trendingProduct!.add(new GroceryTrendProducts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.trendingProduct != null) {
      data['trending_product'] =
          this.trendingProduct!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class GroceryTrendProducts {
  String? productId;
  String? total;
  String? productName;
  String? productThambnail;
  String? sellingPrice;
  String? discountPrice;

  GroceryTrendProducts(
      {this.productId,
        this.total,
        this.productName,
        this.productThambnail,
        this.sellingPrice,
        this.discountPrice});

  GroceryTrendProducts.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    total = json['total'];
    productName = json['product_name'];
    productThambnail = json['product_thambnail'];
    sellingPrice = json['selling_price'];
    discountPrice = json['discount_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['total'] = this.total;
    data['product_name'] = this.productName;
    data['product_thambnail'] = this.productThambnail;
    data['selling_price'] = this.sellingPrice;
    data['discount_price'] = this.discountPrice;
    return data;
  }
}


// class DealsOfTheDayModel{
//   String? productImageUrl;
//   String? productName;
//   String? day;
//   String? hours;
//   String? minuets;
//   String? second;
//   int? ratting;
//   String? price;
//   String? prePrice;
//
//
//   DealsOfTheDayModel({
//     this.productImageUrl,
//     this.productName,
//     this.day,
//     this.hours,
//     this.minuets,
//     this.second,
//     this.ratting,
//     this.price,
//     this.prePrice,
// });
//
//   static List<DealsOfTheDayModel> list=[
//     DealsOfTheDayModel(
//       productImageUrl:"images/grocery/p6.jpg",
//       productName: "product name 1",
//       day: "15",
//       hours: "6",
//       minuets: "24",
//       second: "57",
//       ratting: 4,
//       price: "1000.0",
//       prePrice: "2000.0",
//     ),
//     DealsOfTheDayModel(
//       productImageUrl:"images/grocery/p7.jpg",
//       productName: "product name 1",
//       day: "15",
//       hours: "6",
//       minuets: "24",
//       second: "57",
//       ratting: 4,
//       price: "1000.0",
//       prePrice: "2000.0",
//     ),
//     DealsOfTheDayModel(
//       productImageUrl:"images/grocery/p8.jpg",
//       productName: "product name 1",
//       day: "15",
//       hours: "6",
//       minuets: "24",
//       second: "57",
//       ratting: 4,
//       price: "1000.0",
//       prePrice: "2000.0",
//     ),
//     DealsOfTheDayModel(
//       productImageUrl:"images/grocery/p9.jpg",
//       productName: "product name 1",
//       day: "15",
//       hours: "6",
//       minuets: "24",
//       second: "57",
//       ratting: 4,
//       price: "1000.0",
//       prePrice: "2000.0",
//     ),
//     DealsOfTheDayModel(
//       productImageUrl:"images/grocery/p9.jpg",
//       productName: "product name 1",
//       day: "15",
//       hours: "6",
//       minuets: "24",
//       second: "57",
//       ratting: 4,
//       price: "1000.0",
//       prePrice: "2000.0",
//     ),
//   ];
// }