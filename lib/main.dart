import 'package:customer_ecommerce_app/blocs/wishlist_bloc.dart';
import 'package:customer_ecommerce_app/blocs/wishlist_event.dart';
import 'package:customer_ecommerce_app/config/app_router.dart';
import 'package:customer_ecommerce_app/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => WishlistBloc()..add(StartWishList())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Buyer App",
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: HomeScreen.routeName,
      ),
    );
  }
}
