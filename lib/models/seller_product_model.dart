import 'dart:convert';

import 'package:equatable/equatable.dart';

class SellerProduct extends Equatable {
  final int id;
  final String name;
  final String description;
  final String category;
  final String imageUrl;
    double price;
    double quantity;
  final bool isRecommended;
  final bool isPopular;

   SellerProduct({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.imageUrl,
    this.price = 0,
     this.quantity = 0,
    required this.isRecommended,
    required this.isPopular,
  });

  @override
  // TODO: implement props
  List<Object?> get props {
    return [
      id,
      name,
      description,
      category,
      imageUrl,
      price,
      quantity,
      isRecommended,
      isPopular,
    ];
  }

  SellerProduct copyWith({
    int? id,
    String? name,
    String? description,
    String? category,
    String? imageUrl,
    double? price,
    double? quantity,
    bool? isRecommended,
    bool? isPopular,
  }) {
    return SellerProduct(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      quantity :quantity ?? this.quantity,
      category: category ?? this.category,
      imageUrl: imageUrl ?? this.imageUrl,
      isRecommended: isRecommended ?? this.isRecommended,
      isPopular: isPopular ?? this.isPopular,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "description":description,
      "category": category,
      "imageUrl": imageUrl,
      "price": price,
      "quantity": quantity,
      "isRecommended": isRecommended,
      "isPopular": isPopular,
    };
  }

  factory SellerProduct.fromMap(Map<String, dynamic> map) {
    return SellerProduct(
      id: map["id"],
      name: map["name"],
      description: map["description"],
      category: map["category"],
      imageUrl: map["imageUrl"],
      price: map['price'],
      quantity : map['quantity'],
      isRecommended: map["isRecommended"],
      isPopular: map["isPopular"],
    );
  }

  String toJson() => json.encode(toMap());

  factory SellerProduct.fromJson(String source) =>
      SellerProduct.fromJson(json.decode(source));

  @override
  bool get stringify => true;

  static List<SellerProduct> products =  [
    SellerProduct(
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        name: "product1 ",
        category: "category 1",
        imageUrl:
            "https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80",
        price: 10,
        quantity: 20,
        isRecommended: true,
        isPopular: true,
        id: 1),
    SellerProduct(
        name: "product3 ",
        category: "category 3",
        description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",

        imageUrl:
            "https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80",
        price: 30.0,
        quantity:10,
        isRecommended: true,
        isPopular: true,
        id: 2),
    SellerProduct(
        name: "product2 ",
        category: "category 2",
        description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",

        imageUrl:
            "https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80",
        price: 20.0,
        quantity: 35,
        isRecommended: false,
        isPopular: false,
        id: 3)
  ];
}
