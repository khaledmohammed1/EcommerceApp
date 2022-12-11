import 'package:flutter/material.dart';

class SellerHomeScreen extends StatelessWidget {
  static const String routeName = "/sellerHome";

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const SellerHomeScreen());
  }
  const SellerHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: const Text("Seller Home Screen"),
              ),
            ),

          ],
        ));
  }
}
