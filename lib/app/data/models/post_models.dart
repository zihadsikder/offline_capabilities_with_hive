import 'dart:convert';
import 'package:hive/hive.dart';

part 'post_models.g.dart';

@HiveType(typeId: 0) // Unique typeId for Hive serialization
class PostModel extends HiveObject {
  @HiveField(0)
  final int? userId;

  @HiveField(1)
  final int? id;

  @HiveField(2)
  final String? title;

  @HiveField(3)
  final String? body;

  PostModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}

// JSON Parsing Helpers
List<PostModel> postModelFromJson(String str) =>
    List<PostModel>.from(json.decode(str).map((x) => PostModel.fromJson(x)));

String postModelToJson(List<PostModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
