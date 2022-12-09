import 'package:customer_ecommerce_app/models/models.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class CategoryScreen extends StatelessWidget {
  static const String routeName = "/category";

  static Route route({required Category category}) {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => CategoryScreen(category: category));
  }

  final Category category;

  const CategoryScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts = Product.products.where((product) => product.category == category.name).toList();
    return Scaffold(
        appBar: CustomAppBar(title: category.name),
        bottomNavigationBar: const CustomNavBar(),
        body: GridView.builder(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.15),
            itemCount: categoryProducts.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                  child: ProductCard(
                product: categoryProducts[index],
                widthFactor: 2.3,
              ));
            }));
  }
}
