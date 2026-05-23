// To parse this JSON data, do
//
//     final postLoginResponse = postLoginResponseFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

PostLoginResponse postLoginResponseFromJson(String str) =>
    PostLoginResponse.fromJson(json.decode(str));

String postLoginResponseToJson(PostLoginResponse data) =>
    json.encode(data.toJson());

class PostLoginResponse {
  final String token;

  PostLoginResponse({required this.token});

  factory PostLoginResponse.fromJson(Map<String, dynamic> json) =>
      PostLoginResponse(token: json["token"]);

  Map<String, dynamic> toJson() => {"token": token};
}
