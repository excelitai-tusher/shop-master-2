// // To parse this JSON data, do
// //
// //     final bannerCategory = bannerCategoryFromJson(jsonString);
//
// import 'package:meta/meta.dart';
// import 'dart:convert';
//
// List<BannerCategory> bannerCategoryFromJson(String str) => List<BannerCategory>.from(json.decode(str).map((x) => BannerCategory.fromJson(x)));
//
// String bannerCategoryToJson(List<BannerCategory> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class BannerCategory {
//   BannerCategory({
//     this.id,
//    this.bennarImg,
//   this.bannerTitle,
//      this.bennarUrl,
//      this.status,
//    this.createdAt,
//   this.updatedAt,
//   });
//
//   final int ?id;
//   final String? bennarImg;
//   final dynamic bannerTitle;
//   final dynamic bennarUrl;
//   final String ?status;
//   final dynamic createdAt;
//   final dynamic updatedAt;
//
//   factory BannerCategory.fromJson(Map<String, dynamic> json) => BannerCategory(
//     id: json["id"] == null ? null : json["id"],
//     bennarImg: json["bennar_img"] == null ? null : json["bennar_img"],
//     bannerTitle: json["banner_title"],
//     bennarUrl: json["bennar_url"],
//     status: json["status"] == null ? null : json["status"],
//     createdAt: json["created_at"],
//     updatedAt: json["updated_at"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id == null ? null : id,
//     "bennar_img": bennarImg == null ? null : bennarImg,
//     "banner_title": bannerTitle,
//     "bennar_url": bennarUrl,
//     "status": status == null ? null : status,
//     "created_at": createdAt,
//     "updated_at": updatedAt,
//   };
// }
