import 'package:customer_ecommerce_app/blocs/cart/cart_bloc.dart';
import 'package:customer_ecommerce_app/blocs/cart/cart_event.dart';
import 'package:customer_ecommerce_app/blocs/wishList/wishlist_bloc.dart';
import 'package:customer_ecommerce_app/blocs/wishList/wishlist_event.dart';
import 'package:customer_ecommerce_app/config/app_router.dart';
import 'package:customer_ecommerce_app/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screens/screens.dart';

void main() {
 // Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => WishlistBloc()..add(StartWishList())),
        BlocProvider(create: (_) => CartBloc()..add(CartStarted())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Buyer App",
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: SellerHomeScreen.routeName,
      ),
    );
  }
}
