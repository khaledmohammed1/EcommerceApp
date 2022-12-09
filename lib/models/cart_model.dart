import 'package:equatable/equatable.dart';

import 'models.dart';

class Cart extends Equatable{
  Cart();

  double get subtotal => products.fold(0, (total, current) => total + current.price);
  double get total => subtotal + 20;

  double deliveryFee(subtotal) {
    if(subtotal >= 100.0){
      return 0.0;
    }else{
      return 10.0;
    }
  }
  String get subtotalString => subtotal.toStringAsFixed(2);
  String get deliveryFeeString => deliveryFee(subtotal).toStringAsFixed(2);
  String get totalString => total.toStringAsFixed(2);



  List<Product> products = [
    Product(
        name: "product1 ",
        category: "category 1",
        imageUrl:
        "https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80",
        price: 10,
        isRecommended: true,
        isPopular: true),
    Product(
        name: "product3 ",
        category: "category 3",
        imageUrl:
        "https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80",
        price: 30.0,
        isRecommended: true,
        isPopular: true),
    Product(
        name: "product2 ",
        category: "category 2",
        imageUrl:
        "https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80",
        price: 20.0,
        isRecommended: false,
        isPopular: false)
  ];

  @override
  // TODO: implement props
  List<Object?> get props => [];
}