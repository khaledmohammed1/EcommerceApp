import 'package:customer_ecommerce_app/models/models.dart';
import 'package:customer_ecommerce_app/screens/screens.dart';
import 'package:flutter/material.dart';

import '../screens/seller_add_product/sellerAddProductScreen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print("this is route : ${settings.name}");

    switch (settings.name) {
      case "/":
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case SplashScreen.routeName:
        return SplashScreen.route();
      case ControlScreen.routeName:
        return ControlScreen.route();
      case ProfileScreen.routeName:
        return ProfileScreen.route();
      case CategoryScreen.routeName:
        return CategoryScreen.route(category: settings.arguments as Category);
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      case WishListScreen.routeName:
        return WishListScreen.route();
      case SellerHomeScreen.routeName:
        return SellerHomeScreen.route();
      case SellerProductScreen.routeName:
        return SellerProductScreen.route();
      case SellerAddProductScreen.routeName:
        return SellerAddProductScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: "/error"),
        builder: (_) => Scaffold(
              appBar: AppBar(title: const Text("Error")),
            ));
  }
}
