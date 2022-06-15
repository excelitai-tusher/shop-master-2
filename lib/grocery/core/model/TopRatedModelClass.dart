// class Grocery_Top_Rated {
//   List<Null>? topRated;
//
//   Grocery_Top_Rated({this.topRated});
//
//   Grocery_Top_Rated.fromJson(Map<String, dynamic> json) {
//     if (json['top_rated'] != null) {
//       topRated = <Null>[];
//       json['top_rated'].forEach((v) {
//         topRated!.add(new Null.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.topRated != null) {
//       data['top_rated'] = this.topRated!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
//
// }