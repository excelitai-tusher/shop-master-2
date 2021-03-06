class Grocery_recently_added {
  List<RecentlyAdded>? recentlyAdded;

  Grocery_recently_added({this.recentlyAdded});

  Grocery_recently_added.fromJson(Map<String, dynamic> json) {
    if (json['recently_added'] != null) {
      recentlyAdded = <RecentlyAdded>[];
      json['recently_added'].forEach((v) {
        recentlyAdded!.add(new RecentlyAdded.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.recentlyAdded != null) {
      data['recently_added'] =
          this.recentlyAdded!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RecentlyAdded {
  String? id;
  String? productThambnail;
  String? productName;
  String? sellingPrice;
  String? discountPrice;

  RecentlyAdded(
      {this.id,
        this.productThambnail,
        this.productName,
        this.sellingPrice,
        this.discountPrice});

  RecentlyAdded.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productThambnail = json['product_thambnail'];
    productName = json['product_name'];
    sellingPrice = json['selling_price'];
    discountPrice = json['discount_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_thambnail'] = this.productThambnail;
    data['product_name'] = this.productName;
    data['selling_price'] = this.sellingPrice;
    data['discount_price'] = this.discountPrice;
    return data;
  }
}