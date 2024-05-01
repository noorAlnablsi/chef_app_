// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class MealModel {
  String name;
  String description;
  num price;
  List<dynamic> images;
  MealModel({
    required this.name,
    required this.description,
    required this.price,
    required this.images,
  });

  MealModel copyWith({
    String? name,
    String? description,
    num? price,
    List<dynamic>? images,
  }) {
    return MealModel(
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      images: images ?? this.images,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'images': images,
    };
  }

  factory MealModel.fromMap(Map<String, dynamic> map) {
    return MealModel(
      name: map['name'] as String,
      description: map['description'] as String,
      price: map['price'] as num,
      images: List<dynamic>.from((map['images'] as List<dynamic>),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory MealModel.fromJson(String source) => MealModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MealModel(name: $name, description: $description, price: $price, images: $images)';
  }

  @override
  bool operator ==(covariant MealModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.description == description &&
      other.price == price &&
      listEquals(other.images, images);
  }

  @override
  int get hashCode {
    return name.hashCode ^
      description.hashCode ^
      price.hashCode ^
      images.hashCode;
  }
}
