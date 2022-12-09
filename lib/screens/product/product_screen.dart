import 'package:carousel_slider/carousel_slider.dart';
import 'package:customer_ecommerce_app/blocs/wishlist_event.dart';
import 'package:customer_ecommerce_app/blocs/wishlist_state.dart';
import 'package:customer_ecommerce_app/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/wishlist_bloc.dart';
import '../../widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = "/product";

  static Route route({required Product product}) {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => ProductScreen(product: product));
  }

  final Product product;

  const ProductScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: product.name),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder<WishlistBloc, WishlistState>(
                builder: (context, state) {
                  return IconButton(
                    onPressed: () {
                      context.read<WishlistBloc>().add(AddWishListProduct(product));
                      const snackBar = SnackBar(content:  Text("Added to yourWishList!"));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 34,
                    ),
                  );
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                onPressed: () {},
                child: Text(
                  "ADD TO CART",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              viewportFraction: 0.85,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
            items: [HeroCarouselCard(product: product)],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  alignment: Alignment.bottomCenter,
                  color: Colors.black.withAlpha(50),
                ),
                Container(
                  margin: const EdgeInsets.all(5.0),
                  width: MediaQuery.of(context).size.width - 10,
                  height: 50,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.name,
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          "EG ${product.price}",
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ExpansionTile(
              collapsedIconColor: Colors.black,
              iconColor: Colors.black,
              initiallyExpanded: true,
              title: Text(
                "Product Information",
                style: Theme.of(context).textTheme.headline6,
              ),
              children: [
                ListTile(
                  title: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                )
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
          //   child: ExpansionTile(
          //     collapsedIconColor:Colors.black,
          //     iconColor: Colors.black,
          //     title: Text(
          //       "Delivery Information",
          //       style: Theme.of(context).textTheme.headline6,
          //     ),
          //     children: [
          //       ListTile(
          //         title: Text(
          //           "",
          //           style: Theme.of(context).textTheme.bodyText1,
          //         ),
          //       )
          //     ],
          //   ),
          // ),
        ],
      ),

      //
    );
  }
}
