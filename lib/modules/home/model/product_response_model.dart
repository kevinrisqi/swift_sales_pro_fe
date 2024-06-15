// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductResponseModel productModelFromJson(String str) =>
    ProductResponseModel.fromJson(json.decode(str));

String productModelToJson(ProductResponseModel data) =>
    json.encode(data.toJson());

class ProductResponseModel {
  int? code;
  String? status;
  String? message;
  List<Product>? data;

  ProductResponseModel({
    this.code,
    this.status,
    this.message,
    this.data,
  });

  factory ProductResponseModel.fromJson(Map<String, dynamic> json) =>
      ProductResponseModel(
        code: json["code"],
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<Product>.from(json["data"]!.map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "status": status,
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Product {
  int? id;
  String? name;
  String? description;
  int? price;
  int? stock;
  String? image;
  String? category;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? quantity = 0;

  Product({
    this.id,
    this.name,
    this.description,
    this.price,
    this.stock,
    this.image,
    this.category,
    this.createdAt,
    this.updatedAt,
    this.quantity,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        stock: json["stock"],
        image: json["image"],
        category: json["category"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "stock": stock,
        "image": image,
        "category": category,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
