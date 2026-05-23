// To parse this JSON data, do
//
//     final getProductResponse = getProductResponseFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<GetProductResponse> getProductResponseFromJson(String str) =>
    List<GetProductResponse>.from(
      json.decode(str).map((x) => GetProductResponse.fromJson(x)),
    );

String getProductResponseToJson(List<GetProductResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetProductResponse {
  final int id;
  final String title;
  final double price;
  final String description;
  final Category category;
  final String image;
  final Rating rating;

  GetProductResponse({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  factory GetProductResponse.fromJson(Map<String, dynamic> json) =>
      GetProductResponse(
        id: json["id"],
        title: json["title"],
        price: json["price"]?.toDouble(),
        description: json["description"],
        category: categoryValues.map[json["category"]]!,
        image: json["image"],
        rating: Rating.fromJson(json["rating"]),
      );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "price": price,
    "description": description,
    "category": categoryValues.reverse[category],
    "image": image,
    "rating": rating.toJson(),
  };
}

enum Category { ELECTRONICS, JEWELERY, MEN_S_CLOTHING, WOMEN_S_CLOTHING }

final categoryValues = EnumValues({
  "electronics": Category.ELECTRONICS,
  "jewelery": Category.JEWELERY,
  "men's clothing": Category.MEN_S_CLOTHING,
  "women's clothing": Category.WOMEN_S_CLOTHING,
});

class Rating {
  final double rate;
  final int count;

  Rating({required this.rate, required this.count});

  factory Rating.fromJson(Map<String, dynamic> json) =>
      Rating(rate: json["rate"]?.toDouble(), count: json["count"]);

  Map<String, dynamic> toJson() => {"rate": rate, "count": count};
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
