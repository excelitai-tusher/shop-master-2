class Order_Details_1 {
  Payments? payments;

  Order_Details_1({this.payments});

  Order_Details_1.fromJson(Map<String, dynamic> json) {
    payments = json['payments'] != null
        ? new Payments.fromJson(json['payments'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.payments != null) {
      data['payments'] = this.payments!.toJson();
    }
    return data;
  }
}

class Payments {
  String? id;
  String? deliveryTime;
  String? paymentMethod;
  String? invoiceNo;
  String? amount;
  String? deliveryCharge;
  String? streetAddress;

  Payments(
      {this.id,
        this.deliveryTime,
        this.paymentMethod,
        this.invoiceNo,
        this.amount,
        this.deliveryCharge,
        this.streetAddress});

  Payments.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    deliveryTime = json['delivery_time'];
    paymentMethod = json['payment_method'];
    invoiceNo = json['invoice_no'];
    amount = json['amount'];
    deliveryCharge = json['delivery_charge'];
    streetAddress = json['street_address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['delivery_time'] = this.deliveryTime;
    data['payment_method'] = this.paymentMethod;
    data['invoice_no'] = this.invoiceNo;
    data['amount'] = this.amount;
    data['delivery_charge'] = this.deliveryCharge;
    data['street_address'] = this.streetAddress;
    return data;
  }
}