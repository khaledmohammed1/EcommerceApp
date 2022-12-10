import 'package:equatable/equatable.dart';

import 'models.dart';

class Cart extends Equatable{
  final List<Product> products;
  const Cart({this.products = const <Product>[]});

  double get subtotal => products.fold(0, (total, current) => total + current.price);
  double get total => subtotal == 0 ? subtotal :subtotal + 20;

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


  @override
  // TODO: implement props
  List<Object?> get props => [products];
}