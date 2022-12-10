import 'package:customer_ecommerce_app/blocs/wishList/wishlist_bloc.dart';
import 'package:customer_ecommerce_app/blocs/wishList/wishlist_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/widgets.dart';

class WishListScreen extends StatelessWidget {
  static const String routeName = "/wishlist";

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const WishListScreen());
  }

  const WishListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "WishList"),
      bottomNavigationBar: const CustomNavBar(),
      body: BlocBuilder<WishlistBloc, WishlistState>(
        builder: (context, state) {
          if(state is WishlistLoading){
            return const Center(
              child: CircularProgressIndicator(color: Colors.black,),
            );
          }
          if(state is WishlistLoaded){
            return GridView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(vertical: 20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, childAspectRatio: 2.2),
              itemCount: state.wishList.products.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: ProductCard(
                    product: state.wishList.products[index],
                    widthFactor: 1.2,
                    leftPosition: 20,
                    isWishList: true,
                  ),
                );
              },
            );}
            else{
              return const Text("SomeThing went wrong");
          }
          }
      ),
    );
  }
}
